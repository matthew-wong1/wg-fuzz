struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_2,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_5 {
    a: vec4<u32>,
    b: Struct_3,
    c: f32,
    d: f32,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_1) -> i32 {
    let var_0 = 15188u;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(303f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1607f, -1187f, true)) * _wgslsmith_div_f32(-457f, -774f))))));
    let var_2 = Struct_4(-max(arg_0, vec3<i32>(arg_0.x, -1i, ~(-1i))), Struct_2(arg_1), arg_1, Struct_1(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.c, var_0, 38751u, arg_1.a), ~vec4<u32>(0u, u_input.c, u_input.c, 1u)), vec4<u32>(10842u ^ u_input.c, ~0u, select(91152u, 1u, true), u_input.c & var_0))));
    let var_3 = true;
    let var_4 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1))), var_1) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_1, var_1)))))))));
    return 2147483647i;
}

fn func_3(arg_0: u32) -> u32 {
    let var_0 = Struct_4(~min(_wgslsmith_clamp_vec3_i32(abs(u_input.d.wzx), vec3<i32>(u_input.b, u_input.b, 2147483647i), u_input.d.yxw), u_input.d.yxx), Struct_2(Struct_1(~(~5558u))), Struct_1(_wgslsmith_clamp_u32(_wgslsmith_add_u32(max(62617u, arg_0), _wgslsmith_mult_u32(arg_0, arg_0)), _wgslsmith_mult_u32(~arg_0, u_input.c), u_input.c)), Struct_1(5250u));
    return 4294967295u;
}

fn func_1(arg_0: vec3<bool>) -> Struct_3 {
    var var_0 = arg_0;
    var var_1 = arg_0.x;
    var var_2 = _wgslsmith_mod_i32(func_2(max(-_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.e, -1i, u_input.a), vec3<i32>(39329i, u_input.b, u_input.d.x)), u_input.d.yzx), Struct_1(~u_input.c)), u_input.b);
    var_2 = u_input.a;
    let var_3 = Struct_1(func_3(u_input.c) >> (~(~(~u_input.c)) % 32u));
    return Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(874f, _wgslsmith_f_op_f32(round(-357f)), _wgslsmith_f_op_f32(ceil(-991f)), _wgslsmith_f_op_f32(f32(-1f) * -539f))))), var_3);
}

fn func_4(arg_0: Struct_3, arg_1: vec3<f32>) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(921f, 1024f))));
    let var_1 = Struct_4(vec3<i32>(u_input.e, func_2(_wgslsmith_div_vec3_i32(abs(u_input.d.yyw), abs(vec3<i32>(u_input.d.x, u_input.e, u_input.d.x))), func_1(vec3<bool>(true, true, true)).b), 2147483647i), Struct_2(Struct_1(~7758u)), Struct_1(arg_0.b.a), Struct_1(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.b.a, 4294967295u, 122275u), vec3<u32>(57029u, arg_0.b.a, 40260u)), 43783u, firstTrailingBit(~arg_0.b.a))));
    var var_2 = var_1.b;
    var var_3 = _wgslsmith_sub_i32(u_input.d.x, (-var_1.a.x | -24027i) >> (~_wgslsmith_sub_u32(~1u, abs(2596u)) % 32u));
    var_2 = Struct_2(func_1(select(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), false), vec3<bool>(var_0.x >= arg_1.x, all(vec3<bool>(false, true, true)), true), vec3<bool>(true, true, true))).b);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0.a.x, -517f, arg_0.a.x, arg_1.x), arg_0.a)) * vec4<f32>(-1275f, arg_1.x, var_0.x, 878f)))) - arg_0.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(func_1(vec3<bool>(false, false, true)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-880f, -346f, -320f), vec3<f32>(541f, 192f, -1224f)))))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(714f + 1097f), _wgslsmith_f_op_f32(859f + -166f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1395f, -768f)) * -310f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_vec4_f32(func_4(Struct_3(vec4<f32>(1192f, 1161f, -351f, -605f), Struct_1(u_input.c)), vec3<f32>(-1294f, 870f, -1000f))).x)), _wgslsmith_div_f32(_wgslsmith_div_f32(-719f, 501f), _wgslsmith_f_op_f32(floor(1278f))))), Struct_1(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, u_input.c, u_input.c), ~vec3<u32>(0u, u_input.c, u_input.c)) >> (_wgslsmith_mod_u32(u_input.c, ~30959u) % 32u)));
    var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-431f, -1368f, var_0.a.x, var_0.a.x)) * vec4<f32>(var_0.a.x, var_0.a.x, -140f, -1543f))))), func_1(vec3<bool>(true, true, true)).b);
    let var_1 = true;
    var var_2 = select(vec3<bool>(var_1, false, true), select(vec3<bool>(true, var_1, var_1), !select(!vec3<bool>(var_1, false, true), select(vec3<bool>(true, var_1, var_1), vec3<bool>(var_1, true, true), vec3<bool>(false, false, false)), 457f != var_0.a.x), !(!all(vec2<bool>(var_1, var_1)))), any(!(!(!vec4<bool>(var_1, false, false, var_1)))));
    let var_3 = var_0.b;
    var var_4 = _wgslsmith_f_op_f32(-183f - 893f);
    let var_5 = var_0.a.xzw;
    var var_6 = u_input.e;
    var_0 = func_1(vec3<bool>(false, all(vec4<bool>(var_2.x, var_2.x || false, !var_1, true)), var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(min(countOneBits(~35520u), _wgslsmith_mult_u32(reverseBits(var_3.a), u_input.c)));
}

