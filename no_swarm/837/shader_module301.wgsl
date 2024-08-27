struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: u32, arg_3: vec2<u32>) -> vec4<u32> {
    global0 = max(~(~vec4<u32>(83344u, 95164u, arg_1.a.x, 1u)), firstLeadingBit(vec4<u32>(~global0.x, _wgslsmith_clamp_u32(arg_1.a.x | 78386u, reverseBits(4294967295u), 24823u), ~global0.x, arg_3.x)));
    global0 = firstTrailingBit(vec4<u32>(4294967295u, 38729u, 1u, 1u) << (vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_2, global0.x, arg_3.x), min(vec4<u32>(arg_3.x, 4294967295u, arg_2, global0.x), vec4<u32>(arg_2, 9584u, 18599u, 26981u))), ~_wgslsmith_dot_vec4_u32(vec4<u32>(61437u, 0u, 0u, 0u), vec4<u32>(arg_3.x, arg_2, arg_3.x, 0u)), ~1u, ~1u) % vec4<u32>(32u)));
    var var_0 = arg_0;
    var_0 = _wgslsmith_f_op_f32(abs(arg_0));
    var var_1 = Struct_2(vec3<i32>(u_input.a.x, -(~(-13949i)), u_input.a.x));
    return ~(~(~vec4<u32>(arg_3.x, 68209u, arg_2, arg_1.a.x))) | vec4<u32>(~arg_1.a.x, max(arg_2, arg_2), 29991u, firstLeadingBit(max(23629u | arg_2, _wgslsmith_mult_u32(global0.x, 4294967295u))));
}

fn func_2() -> u32 {
    global0 = abs(_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(min(func_3(-1000f, Struct_1(global0.xzx), 0u, global0.zw), ~vec4<u32>(global0.x, global0.x, 115814u, 1u)), abs(vec4<u32>(global0.x, global0.x, 0u, 1u)) & (vec4<u32>(4294967295u, 0u, global0.x, global0.x) << (vec4<u32>(global0.x, 20063u, global0.x, global0.x) % vec4<u32>(32u)))), vec4<u32>(_wgslsmith_mult_u32(global0.x, ~global0.x), min(~global0.x, global0.x << (0u % 32u)), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(global0.yyy, global0.wxy), ~global0.yww), ~abs(global0.x))));
    global0 = firstTrailingBit(vec4<u32>(firstLeadingBit(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(global0.yz, vec2<u32>(1u, global0.x)), 16036u, ~4294967295u)), ~39862u, ~global0.x, 0u));
    let var_0 = vec4<i32>(2147483647i, select(1i, 42201i ^ ~u_input.a.x, true) << (_wgslsmith_dot_vec4_u32(max(vec4<u32>(global0.x, 0u, 18930u, 17970u), vec4<u32>(global0.x, global0.x, global0.x, global0.x)) >> (vec4<u32>(1u, global0.x, global0.x, global0.x) % vec4<u32>(32u)), ~firstLeadingBit(vec4<u32>(global0.x, global0.x, global0.x, global0.x))) % 32u), -(i32(-1i) * -reverseBits(-1i)), min(abs(u_input.a.x), 37990i));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-763f))))));
    let var_2 = Struct_2(vec3<i32>(-abs(_wgslsmith_mod_i32(u_input.a.x, 58681i)), (i32(-1i) * -u_input.a.x) | 1i, ~(1i ^ -u_input.a.x)));
    return 4294967295u;
}

fn func_1(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: vec3<u32>) -> vec4<f32> {
    global0 = select(vec4<u32>(firstLeadingBit(_wgslsmith_clamp_u32(global0.x, ~40767u, global0.x)), func_2(), ~1u, _wgslsmith_add_u32(~(~1u), max(max(global0.x, arg_2.x), 1u))), arg_1, vec4<bool>(true, select(false, arg_0.a.x == 1i, true), true, !((47853u >> (arg_2.x % 32u)) != ~0u)));
    var var_0 = Struct_1(~vec3<u32>(~1u, func_3(_wgslsmith_f_op_f32(f32(-1f) * -795f), Struct_1(vec3<u32>(global0.x, 25241u, 4294967295u)), ~0u, vec2<u32>(arg_1.x, arg_2.x)).x, _wgslsmith_div_u32(36177u, 30707u >> (arg_1.x % 32u))));
    let var_1 = ~15227u;
    let var_2 = arg_0;
    var_0 = Struct_1(vec3<u32>(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1590f, 130f)) * 1907f), Struct_1(var_0.a), var_0.a.x & reverseBits(15065u), _wgslsmith_mult_vec2_u32(firstLeadingBit(var_0.a.zx), vec2<u32>(1u, var_1) & vec2<u32>(0u, var_1))).x, ~func_3(_wgslsmith_f_op_f32(-1464f + -1000f), Struct_1(vec3<u32>(var_0.a.x, 0u, global0.x)), ~0u, ~vec2<u32>(var_0.a.x, 0u)).x, ~_wgslsmith_dot_vec2_u32(reverseBits(global0.wz), var_0.a.xx)));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(581f, 718f, -2052f, -908f) + vec4<f32>(1085f, -992f, 675f, -1229f)) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(779f, 183f, -292f, 256f), vec4<f32>(553f, 1086f, -156f, -950f)))), vec4<f32>(_wgslsmith_f_op_f32(floor(-1000f)), -783f, -824f, _wgslsmith_f_op_f32(-575f * -509f)), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-205f, -393f, -540f, -748f), vec4<f32>(517f, 1069f, -1000f, 1379f), true))))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec2<i32>) -> Struct_1 {
    let var_0 = ~vec3<u32>(4294967295u, global0.x, global0.x);
    global0 = vec4<u32>(22300u, _wgslsmith_div_u32(var_0.x, 5724u), 49726u, ~global0.x);
    let var_1 = Struct_2(_wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(-select(vec3<i32>(-2147483647i, 1i, u_input.a.x), vec3<i32>(arg_1.x, u_input.a.x, -1i), false), vec3<i32>(2147483647i ^ u_input.a.x, 69523i, ~arg_1.x)), abs(select(-vec3<i32>(arg_1.x, arg_1.x, u_input.a.x), vec3<i32>(arg_1.x, -1i, 2147483647i), any(vec2<bool>(true, false))))));
    global0 = vec4<u32>(83740u, global0.x, ~(~(~var_0.x ^ func_3(arg_0.x, Struct_1(var_0), global0.x, vec2<u32>(var_0.x, var_0.x)).x)), ~var_0.x);
    var var_2 = (~global0.x > func_3(-375f, Struct_1(~var_0), (var_0.x >> (global0.x % 32u)) | (var_0.x ^ global0.x), _wgslsmith_div_vec2_u32(vec2<u32>(40425u, global0.x), _wgslsmith_sub_vec2_u32(var_0.yx, global0.xy))).x) & !any(vec3<bool>(true, true, true));
    return Struct_1(min(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 1u, global0.x), ~_wgslsmith_clamp_vec3_u32(global0.wzy, global0.zwx, var_0)), ~(global0.ywy & vec3<u32>(var_0.x, global0.x, 51814u)) & ~_wgslsmith_div_vec3_u32(vec3<u32>(2340u, 19021u, var_0.x), global0.xxz)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (16103i | abs(firstLeadingBit(u_input.a.x))) >> (~countOneBits(global0.x) % 32u);
    var var_1 = ~(-vec4<i32>(u_input.a.x, ~u_input.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), ~u_input.a), ~18895i));
    let var_2 = true;
    var var_3 = func_4(_wgslsmith_f_op_vec4_f32(func_1(Struct_2(var_1.wzy), countOneBits(~vec4<u32>(23324u, global0.x, 3799u, global0.x)), min(vec3<u32>(1u, ~global0.x, _wgslsmith_mult_u32(11118u, global0.x)), ~_wgslsmith_mod_vec3_u32(global0.zzy, global0.wxy)))), abs(select(~(vec2<i32>(var_1.x, 1i) | u_input.a), ~(var_1.wz | u_input.a), var_2)));
    let var_4 = ~var_3.a.x;
    let var_5 = max(vec4<i32>(26219i, -_wgslsmith_clamp_i32(var_1.x, -31730i << (0u % 32u), _wgslsmith_sub_i32(var_1.x, 38733i)), 2147483647i, u_input.a.x), vec4<i32>(-firstLeadingBit(-1i), -(min(-2147483647i, var_1.x) & 1i), var_1.x, var_1.x));
    var_0 = _wgslsmith_dot_vec4_i32(min(var_5, _wgslsmith_sub_vec4_i32(var_5, countOneBits(var_5))), -var_5 >> (select(abs(vec4<u32>(27819u, var_3.a.x, 4294967295u, 1u)) ^ vec4<u32>(0u, 1u, 9217u, global0.x), vec4<u32>(0u >> (0u % 32u), var_3.a.x, 15962u, func_4(vec4<f32>(-510f, 1000f, 557f, 408f), var_1.wz).a.x), !(!vec4<bool>(true, var_2, var_2, var_2))) % vec4<u32>(32u)));
    var var_6 = _wgslsmith_mult_vec2_u32(vec2<u32>(~select(1u, _wgslsmith_mult_u32(1u, 23824u), !var_2), ~(~_wgslsmith_dot_vec2_u32(var_3.a.zy, global0.zy))), ~(~func_4(_wgslsmith_f_op_vec4_f32(func_1(Struct_2(var_5.zzx), vec4<u32>(24031u, global0.x, global0.x, 22799u), vec3<u32>(4294967295u, var_3.a.x, 1u))), u_input.a).a.xx));
    let x = u_input.a;
    s_output = StorageBuffer(max(u_input.a.x, var_5.x));
}

