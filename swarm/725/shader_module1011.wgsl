struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: i32,
    d: vec2<f32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 24> = array<vec3<bool>, 24>(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false));

var<private> global1: vec4<u32> = vec4<u32>(0u, 33497u, 4294967295u, 1u);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2() -> i32 {
    let var_0 = global0[_wgslsmith_index_u32(22660u, 24u)];
    var var_1 = Struct_2(!var_0.x != true);
    var_1 = Struct_2(!var_0.x);
    let var_2 = 1f;
    var var_3 = ((vec4<i32>(-1i) * -countOneBits(vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, u_input.a.x))) >> (_wgslsmith_sub_vec4_u32(~(~vec4<u32>(global1.x, 58008u, 1u, u_input.c.x)), max(vec4<u32>(global1.x, global1.x, global1.x, 4372u) << (vec4<u32>(global1.x, 15514u, u_input.b, 1u) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(vec4<u32>(global1.x, global1.x, 0u, u_input.c.x), vec4<u32>(4294967295u, global1.x, 1142u, global1.x)))) % vec4<u32>(32u))) >> (((_wgslsmith_mult_vec4_u32(vec4<u32>(27832u, 0u, u_input.b, global1.x), vec4<u32>(global1.x, 38606u, 4141u, global1.x) << (vec4<u32>(global1.x, global1.x, 38662u, u_input.c.x) % vec4<u32>(32u))) ^ (~vec4<u32>(global1.x, global1.x, 31732u, u_input.b) ^ ~vec4<u32>(global1.x, 4294967295u, 1u, 65477u))) & vec4<u32>(~global1.x << (global1.x % 32u), _wgslsmith_div_u32(37473u, 4294967295u << (global1.x % 32u)), 19736u, 73513u)) % vec4<u32>(32u));
    return ~var_3.x;
}

fn func_3(arg_0: Struct_2) -> bool {
    global1 = ~(firstTrailingBit(select(vec4<u32>(global1.x, global1.x, 37765u, global1.x), ~vec4<u32>(u_input.c.x, 8450u, 4294967295u, 1u), true)) << (~vec4<u32>(_wgslsmith_sub_u32(global1.x, u_input.b), 22330u, 4294967295u, u_input.b | 4294967295u) % vec4<u32>(32u)));
    var var_0 = Struct_1(_wgslsmith_mod_u32(~select(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, 4294967295u, u_input.b, global1.x), vec4<u32>(global1.x, u_input.c.x, u_input.b, 95545u)), u_input.b, any(vec4<bool>(arg_0.a, arg_0.a, arg_0.a, false))), ~u_input.b), !select(!vec3<bool>(arg_0.a, true, true), !(!global0[_wgslsmith_index_u32(0u, 24u)]), arg_0.a), -43172i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1791f, -195f))) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -616f), _wgslsmith_f_op_f32(f32(-1f) * -204f)))), vec2<bool>(true, true));
    global0 = array<vec3<bool>, 24>();
    var_0 = Struct_1(global1.x | var_0.a, select(vec3<bool>(all(vec4<bool>(true, arg_0.a, var_0.e.x, arg_0.a)), false, var_0.b.x), var_0.b, var_0.b), ~countOneBits(var_0.c) | u_input.a.x, var_0.d, vec2<bool>((1i >= _wgslsmith_add_i32(var_0.c, var_0.c)) & (_wgslsmith_f_op_f32(-var_0.d.x) < _wgslsmith_f_op_f32(f32(-1f) * -1648f)), var_0.b.x));
    global1 = select(max(vec4<u32>(~_wgslsmith_clamp_u32(48404u, 34337u, 145u), global1.x | 37933u, countOneBits(1u) ^ global1.x, 0u), vec4<u32>(~var_0.a, global1.x, u_input.b, 1u) & firstTrailingBit(vec4<u32>(4294967295u, global1.x, u_input.c.x, u_input.c.x))), ~(~(vec4<u32>(u_input.c.x, 4294967295u, var_0.a, 1u) | abs(vec4<u32>(0u, 1u, u_input.b, 552u)))), true | !((0i << (u_input.c.x % 32u)) >= -u_input.a.x));
    return var_0.e.x;
}

fn func_1(arg_0: u32) -> Struct_2 {
    global0 = array<vec3<bool>, 24>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(max(-411f, -825f)), -204f, -109f, _wgslsmith_div_f32(2437f, -1153f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-153f, -686f, 217f, 242f)) - vec4<f32>(-1023f, -221f, -438f, -987f))))));
    let var_1 = Struct_1(arg_0, vec3<bool>((_wgslsmith_f_op_f32(-var_0.x) >= -131f) & (u_input.a.x <= ~11768i), true, false), u_input.a.x, var_0.yx, vec2<bool>(abs(1i) <= func_2(), true));
    global0 = array<vec3<bool>, 24>();
    var var_2 = vec3<f32>(963f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-374f)))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(1000f - 565f)), -763f))), -184f);
    return Struct_2(!func_3(Struct_2(var_1.b.x)));
}

fn func_4(arg_0: i32, arg_1: Struct_2) -> Struct_1 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1339f - 1274f))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-216f, 1252f), _wgslsmith_f_op_f32(1023f * -1329f))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -626f)), -1479f);
    global1 = ~select(~_wgslsmith_div_vec4_u32(vec4<u32>(7876u, 0u, 1u, u_input.b), vec4<u32>(4294967295u, global1.x, u_input.b, u_input.c.x)) | (max(vec4<u32>(4294967295u, u_input.b, 55691u, 5987u), vec4<u32>(u_input.b, 2435u, global1.x, 4294967295u)) ^ vec4<u32>(global1.x, 1u, 13253u, u_input.c.x)), ~(~vec4<u32>(33954u, 62519u, 33283u, u_input.b)) & select(vec4<u32>(1u, 4294967295u, global1.x, global1.x), vec4<u32>(44961u, u_input.c.x, 1u, 22978u), !arg_1.a), vec4<bool>(arg_1.a, !(!arg_1.a), true, false));
    global1 = ~vec4<u32>(~global1.x, ~u_input.b, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, u_input.c.x, 36943u, 1u), vec4<u32>(global1.x, u_input.c.x, 8777u, 11412u) ^ vec4<u32>(1u, u_input.b, u_input.c.x, u_input.b)), 45703u) << (vec4<u32>(4961u, 1u, ~u_input.c.x >> (~u_input.c.x % 32u), u_input.c.x) % vec4<u32>(32u));
    var var_1 = arg_1.a;
    let var_2 = Struct_1(min(~(~(global1.x | 967u)), _wgslsmith_mod_u32(global1.x, global1.x)), global0[_wgslsmith_index_u32(1u, 24u)], _wgslsmith_div_i32(1i, _wgslsmith_dot_vec2_i32(reverseBits(-vec2<i32>(78489i, 0i)), u_input.a.zx)), var_0.yx, select(select(select(vec2<bool>(arg_1.a, true), select(vec2<bool>(true, arg_1.a), vec2<bool>(arg_1.a, true), vec2<bool>(false, arg_1.a)), vec2<bool>(arg_1.a, false)), vec2<bool>(arg_1.a, arg_1.a && arg_1.a), all(!vec3<bool>(arg_1.a, arg_1.a, arg_1.a))), vec2<bool>(false, true), select(select(!vec2<bool>(true, arg_1.a), !vec2<bool>(arg_1.a, arg_1.a), all(vec4<bool>(true, arg_1.a, true, true))), select(select(vec2<bool>(arg_1.a, arg_1.a), vec2<bool>(arg_1.a, false), true), !vec2<bool>(arg_1.a, arg_1.a), vec2<bool>(false, arg_1.a)), !(!vec2<bool>(false, arg_1.a)))));
    return Struct_1(33135u, !var_2.b, 24730i, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(max(var_2.d.x, var_2.d.x)), var_0.x))), _wgslsmith_f_op_vec2_f32(min(var_0.yx, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, 1222f) + vec2<f32>(1379f, 143f)), vec2<f32>(var_2.d.x, var_0.x), var_2.e)))))), vec2<bool>(false, select(arg_1.a && all(vec4<bool>(true, arg_1.a, false, true)), arg_1.a, !(false & var_2.e.x))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2) -> vec4<u32> {
    let var_0 = arg_0.b.zx;
    var var_1 = _wgslsmith_dot_vec4_u32(~select(firstTrailingBit(vec4<u32>(1u, 0u, 18672u, u_input.c.x)) ^ ~vec4<u32>(43514u, arg_0.a, global1.x, 0u), ~(~vec4<u32>(0u, arg_0.a, global1.x, global1.x)), vec4<bool>(func_4(-5322i, arg_1).b.x, true || var_0.x, true, arg_0.e.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(~arg_0.a, arg_0.a, ~(~global1.x), _wgslsmith_sub_u32(u_input.c.x, arg_0.a)), ~_wgslsmith_clamp_vec4_u32(~vec4<u32>(33196u, 0u, 25369u, 0u), select(vec4<u32>(u_input.b, arg_0.a, global1.x, 108371u), vec4<u32>(40429u, 4294967295u, 7145u, global1.x), var_0.x), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, 41664u, 4294967295u, 0u), vec4<u32>(40040u, 4294967295u, global1.x, 0u)))));
    global1 = vec4<u32>(1u, 1u, _wgslsmith_sub_u32(u_input.b, ~(_wgslsmith_dot_vec2_u32(vec2<u32>(global1.x, global1.x), vec2<u32>(u_input.c.x, 46883u)) ^ ~u_input.c.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(~arg_0.a, 4294967295u), 79487u, 1u, 122114u), abs(~max(vec4<u32>(u_input.b, 61215u, global1.x, global1.x), vec4<u32>(u_input.b, 4294967295u, u_input.c.x, u_input.b)))));
    let var_2 = func_4(17389i, func_1(1u));
    global1 = ~(~vec4<u32>(3516u, 19435u, u_input.b, global1.x));
    return abs(vec4<u32>(abs(_wgslsmith_dot_vec3_u32(~global1.xwy, _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c.x, 26709u, 4294967295u), global1.wxw, global1.zxy))), ~_wgslsmith_div_u32(firstTrailingBit(arg_0.a), global1.x), ~(~1u), ~(~(global1.x << (var_2.a % 32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~1u, vec3<bool>(true, !((23751u ^ global1.x) > ~global1.x), true), -20710i, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-287f, 1613f), -1296f)))), select(vec2<bool>(true, true), vec2<bool>(!any(vec2<bool>(false, true)), false), vec2<bool>(true, true)));
    global0 = array<vec3<bool>, 24>();
    global1 = ~(~func_5(func_4(-1224i, func_1(var_0.a)), func_1(var_0.a & 4294967295u)));
    let var_1 = var_0.c;
    let var_2 = _wgslsmith_add_i32(abs(firstLeadingBit(1i)), _wgslsmith_add_i32(u_input.a.x, var_0.c));
    let x = u_input.a;
    s_output = StorageBuffer(-9743i, 26545u, _wgslsmith_mult_i32(~(_wgslsmith_mod_i32(var_0.c, var_1) >> (global1.x % 32u)), _wgslsmith_sub_i32(-_wgslsmith_add_i32(u_input.a.x, var_0.c), _wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, var_0.c) << (~var_0.a % 32u))));
}

