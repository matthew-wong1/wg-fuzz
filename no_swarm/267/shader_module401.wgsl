struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: f32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<i32, 26>;

var<private> global2: i32;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<u32>, arg_2: f32) -> f32 {
    let var_0 = u_input.b;
    let var_1 = global0.x ^ u_input.c.x;
    global0 = abs(vec3<u32>(max(var_1, 1u), ~(~1u), 35242u)) >> (~vec3<u32>(u_input.c.x, u_input.a.x, ~(var_1 ^ 9680u)) % vec3<u32>(32u));
    global2 = global1[_wgslsmith_index_u32(var_1, 26u)];
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * arg_2));
    return var_2;
}

fn func_4(arg_0: f32, arg_1: vec3<i32>) -> i32 {
    var var_0 = select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(any(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false))), all(vec3<bool>(true, false, false)))), !select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), true)), vec2<bool>(true, true)), vec2<bool>(~min(global0.x, u_input.a.x) != global0.x, true));
    var var_1 = any(!vec3<bool>(26794i < firstTrailingBit(-31802i), 0u != ~u_input.c.x, var_0.x));
    let var_2 = all(select(!(!select(vec3<bool>(true, var_0.x, false), vec3<bool>(false, true, false), false)), !select(select(vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(var_0.x, false, true), var_0.x), select(vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(true, false, var_0.x), var_0.x), !vec3<bool>(var_0.x, false, false)), vec3<bool>(-921f <= arg_0, all(select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, true))), _wgslsmith_mod_u32(34336u, global0.x) <= global0.x)));
    global1 = array<i32, 26>();
    var_0 = select(vec2<bool>(any(!(!vec3<bool>(true, var_0.x, var_0.x))), var_2), !vec2<bool>(!(!var_2), var_0.x), !any(vec2<bool>(true, true)));
    return ~countOneBits(_wgslsmith_dot_vec3_i32(arg_1, firstTrailingBit(vec3<i32>(2147483647i, -4899i, -13615i))));
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: vec4<bool>) -> f32 {
    global1 = array<i32, 26>();
    global2 = _wgslsmith_div_i32(_wgslsmith_add_i32(arg_0, 0i) & ~(~(u_input.b ^ -1i)), _wgslsmith_clamp_i32(abs(firstLeadingBit(1i)), min(_wgslsmith_mod_i32(arg_0, u_input.b) >> (min(123924u, 10522u) % 32u), u_input.b), _wgslsmith_div_i32(func_4(_wgslsmith_f_op_f32(func_3(vec3<f32>(1000f, -1108f, -471f), u_input.a.wwx, 1045f)), max(vec3<i32>(-1i, global1[_wgslsmith_index_u32(global0.x, 26u)], arg_0), vec3<i32>(24924i, -2147483647i, 74329i))), -_wgslsmith_mult_i32(global1[_wgslsmith_index_u32(65035u, 26u)], 41301i))));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(111f - 1014f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1290f * 229f)), true)) * _wgslsmith_div_f32(-613f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(1102f, 1000f)))))));
    var var_1 = Struct_1(_wgslsmith_div_u32(global0.x, _wgslsmith_add_u32(0u, min(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, u_input.a.x, 4294967295u), u_input.a.xww), firstLeadingBit(16755u)))), abs(-vec3<i32>(~global1[_wgslsmith_index_u32(u_input.a.x, 26u)], 2147483647i, func_4(1091f, vec3<i32>(0i, -31243i, -38374i)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1269f - -628f)), _wgslsmith_f_op_f32(-1138f + _wgslsmith_f_op_f32(822f - -990f))) * _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, -1116f, -300f), vec3<f32>(714f, 1098f, 448f))), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, global0.x, 46672u), abs(u_input.a.xxz)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1424f * 1746f) + 1097f)))), vec4<u32>(global0.x, global0.x, _wgslsmith_div_u32(global0.x, min(_wgslsmith_clamp_u32(u_input.c.x, 30306u, u_input.a.x), 24786u)), u_input.a.x));
    let var_2 = select(firstTrailingBit(select(vec3<u32>(72336u, ~var_1.a, ~1u), vec3<u32>(u_input.a.x, u_input.c.x, ~u_input.c.x), true)), _wgslsmith_clamp_vec3_u32(vec3<u32>(global0.x, 425u, u_input.c.x) | vec3<u32>(global0.x, 34241u, u_input.a.x), _wgslsmith_add_vec3_u32(var_1.d.yzw ^ u_input.a.xwx, _wgslsmith_sub_vec3_u32(u_input.c, var_1.d.xwz)), u_input.c) ^ ~(~vec3<u32>(1u, var_1.d.x, 139192u)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-313f - var_1.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1176f - var_1.c)))) < var_1.c);
    return var_1.c;
}

fn func_1() -> Struct_1 {
    var var_0 = !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1818f)) + _wgslsmith_f_op_f32(func_2(-u_input.b, true, select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), false)))) <= 768f);
    global0 = u_input.a.wzy;
    global0 = vec3<u32>(70154u, reverseBits(_wgslsmith_clamp_u32(select(1u, 0u | u_input.a.x, true), u_input.a.x, 1u)), global0.x);
    var var_1 = !select(!vec4<bool>(any(vec4<bool>(false, false, true, true)), true, true, true), vec4<bool>(true, all(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), false)), false, !all(vec3<bool>(false, true, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), true), vec4<bool>(true, true, true, true), true)));
    var var_2 = Struct_1(select(1u, ~1u, true), vec3<i32>(-1i, _wgslsmith_add_i32(reverseBits(global1[_wgslsmith_index_u32(u_input.c.x, 26u)] | u_input.b), countOneBits(-9656i >> (1u % 32u))), u_input.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-338f)) - -1000f), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1299f), -892f)))), ~u_input.a & ~select(vec4<u32>(7206u, u_input.c.x, u_input.a.x, u_input.a.x), _wgslsmith_add_vec4_u32(vec4<u32>(1u, u_input.c.x, u_input.a.x, u_input.a.x), vec4<u32>(31123u, 0u, 4294967295u, 31459u)), select(vec4<bool>(true, var_1.x, var_1.x, true), vec4<bool>(true, true, var_1.x, true), vec4<bool>(true, var_1.x, false, var_1.x))));
    return Struct_1(_wgslsmith_add_u32(~4294967295u, ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x), global0.zx))), ~(reverseBits(var_2.b << (var_2.d.zzy % vec3<u32>(32u))) << (vec3<u32>(max(global0.x, u_input.a.x), 84422u, ~20123u) % vec3<u32>(32u))), -191f, firstLeadingBit(u_input.a));
}

fn func_5(arg_0: u32, arg_1: Struct_1) -> StorageBuffer {
    let var_0 = vec3<i32>(2147483647i, u_input.b, firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, global1[_wgslsmith_index_u32(0u, 26u)]) << (vec2<u32>(arg_0, 3124u) % vec2<u32>(32u)), vec2<i32>(-2147483647i, 5418i))) >> (_wgslsmith_div_u32(arg_1.d.x, ~_wgslsmith_add_u32(global0.x, u_input.c.x)) % 32u));
    let var_1 = u_input.a.yxy ^ select(u_input.a.zxw, _wgslsmith_add_vec3_u32(min(vec3<u32>(u_input.c.x, 85374u, 1u), vec3<u32>(4294967295u, u_input.a.x, 92975u)), ~vec3<u32>(0u, arg_0, global0.x)) << (arg_1.d.yyx % vec3<u32>(32u)), select(select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, select(true, true, false)), !select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true)));
    global1 = array<i32, 26>();
    let var_2 = vec3<bool>(false, true || any(vec3<bool>(true, true, true)), !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<f32>(-654f, arg_1.c, arg_1.c), vec3<u32>(u_input.c.x, global0.x, 4294967295u), arg_1.c))) > _wgslsmith_f_op_f32(199f + _wgslsmith_f_op_f32(abs(-465f)))));
    let var_3 = Struct_1(countOneBits(firstTrailingBit(37950u)), var_0, _wgslsmith_f_op_f32(sign(arg_1.c)), arg_1.d ^ (u_input.a & vec4<u32>(39169u, 4294967295u, 36924u >> (global0.x % 32u), select(121923u, 1u, var_2.x))));
    return StorageBuffer(vec4<u32>(~arg_0, var_3.a, arg_1.a, arg_1.a));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(32104u, func_1());
}

