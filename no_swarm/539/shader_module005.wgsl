struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: vec3<f32>,
    d: bool,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: i32,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<bool>(false, false, false, true), 1i, vec3<f32>(-1000f, -722f, 693f), false, vec3<f32>(800f, 859f, -195f));

var<private> global1: vec3<f32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<i32>) -> f32 {
    return -1417f;
}

fn func_2() -> u32 {
    var var_0 = firstTrailingBit(vec4<u32>(_wgslsmith_clamp_u32(~u_input.b.x, ~33186u, _wgslsmith_dot_vec2_u32(vec2<u32>(63617u, 4294967295u), vec2<u32>(32693u, 1u))) << (~(u_input.b.x << (4466u % 32u)) % 32u), u_input.b.x, countOneBits(~u_input.b.x), u_input.b.x));
    global0 = Struct_1(select(global0.a, global0.a, vec4<bool>(true, any(vec3<bool>(global0.d, false, global0.d)), true, !global0.d)), u_input.a.x, vec3<f32>(-277f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(Struct_1(vec4<bool>(false, global0.d, global0.d, true), -2147483647i, global0.e, global0.a.x, global0.e), Struct_1(vec4<bool>(true, false, true, true), 27650i, global0.c, global0.a.x, global0.e), vec4<i32>(10285i, global0.b, global0.b, u_input.a.x))), _wgslsmith_f_op_f32(global0.c.x * 1354f), global0.d))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(global1.x))))))), !(any(!global0.a) | global0.d), _wgslsmith_f_op_vec3_f32(select(global0.c, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.e) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-138f, -637f, global0.e.x)))), vec3<f32>(_wgslsmith_f_op_f32(trunc(global1.x)), _wgslsmith_f_op_f32(f32(-1f) * -108f), _wgslsmith_f_op_f32(round(-1462f))))), !select(vec3<bool>(true, global0.d, global0.d), global0.a.wxw, !global0.d))));
    var var_1 = ~firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(~u_input.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 27484u, var_0.x), vec3<u32>(44412u, var_0.x, 97765u)), ~0u, 80139u), reverseBits(vec4<u32>(var_0.x, var_0.x, var_0.x, 4294967295u) ^ vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x))));
    var var_2 = Struct_1(vec4<bool>(global0.a.x, global0.a.x, global0.d, all(vec4<bool>(global0.a.x != global0.a.x, global0.d, false || global0.a.x, true))), select(-global0.b, _wgslsmith_clamp_i32(0i, _wgslsmith_div_i32(~global0.b, 1i), -2147483647i), true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-789f, 315f, global0.c.x) * global0.c) * vec3<f32>(global1.x, -176f, -1000f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.x, -414f, -1200f), _wgslsmith_f_op_vec3_f32(max(global0.e, vec3<f32>(global0.e.x, -1708f, -766f))), global0.a.xwy)))), any(global0.a), global0.c);
    var var_3 = Struct_1(select(!select(!var_2.a, global0.a, true), !select(vec4<bool>(false, true, global0.d, true), select(var_2.a, vec4<bool>(false, false, var_2.a.x, false), var_2.a.x), !global0.d), vec4<bool>(var_2.a.x, global0.a.x, true, _wgslsmith_f_op_f32(1616f + 1647f) > _wgslsmith_f_op_f32(global1.x + 616f))), -2147483647i, global0.c, any(vec2<bool>(-1i >= _wgslsmith_add_i32(var_2.b, 14093i), global0.d)), var_2.c);
    return 0u;
}

fn func_1(arg_0: vec3<bool>, arg_1: vec3<i32>, arg_2: vec3<i32>, arg_3: Struct_1) -> vec3<f32> {
    var var_0 = vec3<i32>(-1i) * -reverseBits(arg_2 & firstLeadingBit(arg_1));
    global0 = Struct_1(vec4<bool>(false, !(arg_0.x | (arg_3.a.x | global0.a.x)), 1u != max(func_2(), u_input.b.x), arg_3.a.x), _wgslsmith_sub_i32(_wgslsmith_div_i32(var_0.x, 32766i), u_input.d), global0.c, global0.b < arg_1.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(min(global1.x, global0.e.x)), 523f, _wgslsmith_f_op_f32(-arg_3.c.x))))));
    let var_1 = u_input.d;
    global1 = vec3<f32>(950f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.c.x)))), -852f);
    global1 = arg_3.e;
    return arg_3.e;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(global0.a, u_input.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-668f, global0.c.x, -1000f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(global0.a.xzx, vec3<i32>(18746i, 37634i, 41222i), vec3<i32>(global0.b, u_input.a.x, -21244i), Struct_1(global0.a, 1i, vec3<f32>(global1.x, 331f, global0.e.x), global0.d, vec3<f32>(global1.x, 1130f, global0.c.x)))))))), global0.d, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -570f)), global1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global1.x)), _wgslsmith_f_op_f32(f32(-1f) * -737f)))));
    global1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-970f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(984f + -1000f))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1578f)) - _wgslsmith_f_op_f32(global1.x + global1.x))))), global1.x, global1.x);
    var var_0 = any(global0.a.zzz);
    var var_1 = 515u;
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -210f), 1771f)) - _wgslsmith_f_op_f32(147f - _wgslsmith_f_op_f32(global1.x * global0.c.x)))))));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-global0.e.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(1000f)), _wgslsmith_f_op_f32(f32(-1f) * -530f)))) + 1278f), _wgslsmith_f_op_f32(-global0.c.x));
    var var_4 = select(select(!global0.a.zyz, select(!select(global0.a.xyx, global0.a.wzz, vec3<bool>(global0.a.x, false, true)), vec3<bool>(!global0.a.x, !global0.a.x, global0.d), global0.a.x), (firstLeadingBit(6079u) < _wgslsmith_add_u32(0u, u_input.b.x)) & !global0.d), global0.a.zyx, global0.a.yyw);
    var_0 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1.x, global1.x, global0.c.x, global1.x), vec4<f32>(-1077f, 385f, global0.e.x, var_3.x))), vec4<f32>(global0.e.x, -1402f, 2060f, global1.x)), vec4<f32>(_wgslsmith_f_op_f32(global0.c.x + 1272f), var_3.x, _wgslsmith_f_op_f32(-global1.x), _wgslsmith_div_f32(global0.c.x, 1000f)))), _wgslsmith_f_op_f32(abs(global1.x)), -_wgslsmith_sub_i32(_wgslsmith_sub_i32(22201i, -50618i), 1i), -(~reverseBits(vec4<i32>(-2054i, global0.b, global0.b, 0i))), -1196f);
}

