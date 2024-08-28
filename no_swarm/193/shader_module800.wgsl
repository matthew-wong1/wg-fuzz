struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec4<bool>,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
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

var<private> global0: Struct_1 = Struct_1(vec3<u32>(1u, 0u, 1u));

var<private> global1: i32 = -1i;

var<private> global2: array<vec2<u32>, 7> = array<vec2<u32>, 7>(vec2<u32>(1u, 1u), vec2<u32>(0u, 4294967295u), vec2<u32>(24189u, 33386u), vec2<u32>(0u, 1u), vec2<u32>(31362u, 0u), vec2<u32>(1u, 4294967295u), vec2<u32>(0u, 1162u));

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> u32 {
    let var_0 = ~_wgslsmith_clamp_vec3_i32(u_input.a.zxy << (global0.a % vec3<u32>(32u)), vec3<i32>(u_input.a.x, 0i, u_input.a.x), u_input.a.yxw);
    var var_1 = _wgslsmith_mult_vec4_i32(u_input.a, vec4<i32>(-1i) * -u_input.a);
    let var_2 = _wgslsmith_dot_vec2_u32(~vec2<u32>(global0.a.x, 105730u) ^ _wgslsmith_sub_vec2_u32(global0.a.xz, vec2<u32>(_wgslsmith_mod_u32(39933u, global0.a.x), ~global0.a.x)), global0.a.yx);
    return _wgslsmith_div_u32(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(1u, max(33871u, 0u), 1u), 4294967295u, var_2) | ~global0.a.x, var_2);
}

fn func_2() -> i32 {
    global0 = Struct_1(abs(vec3<u32>(min(4294967295u << (global0.a.x % 32u), 46428u), ~global0.a.x >> (~global0.a.x % 32u), _wgslsmith_mod_u32(func_3(), _wgslsmith_add_u32(90384u, global0.a.x)))));
    var var_0 = countOneBits(_wgslsmith_div_i32(u_input.a.x, 2147483647i)) | -1i;
    var var_1 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1459f + 1f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -338f) - _wgslsmith_f_op_f32(1302f * -191f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-1326f)))))), _wgslsmith_f_op_f32(min(-364f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(776f + -1031f)))), -997f), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(1355f, _wgslsmith_f_op_f32(ceil(-320f)), true)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(911f)))), 921f, -1000f) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(sign(884f)), 374f, _wgslsmith_f_op_f32(1000f - 158f), _wgslsmith_f_op_f32(abs(483f))))))));
    global0 = Struct_1(global0.a);
    let var_2 = Struct_2(~(~(~1u >> (1u % 32u))), Struct_1(global0.a), !(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), true))), var_1.x, Struct_1(select(abs(global0.a), ~vec3<u32>(4294967295u, 0u, global0.a.x) | global0.a, any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true))))));
    return u_input.a.x;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: f32) -> u32 {
    global1 = ~func_2();
    let var_0 = 2147483647i;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, 1000f, arg_2, 351f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(532f, 581f, arg_2, arg_2))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-922f, 1337f, arg_2, arg_2) + vec4<f32>(arg_2, 898f, arg_2, 894f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1182f, -899f, 2149f, -377f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(144f, 547f, 478f, 1973f) - vec4<f32>(arg_2, arg_2, arg_2, arg_2))))));
    let var_2 = !(~1i <= var_0);
    let var_3 = Struct_1(_wgslsmith_sub_vec3_u32(vec3<u32>(~select(global0.a.x, arg_0.a.x, true), global0.a.x, _wgslsmith_div_u32(global0.a.x, countOneBits(15180u))), vec3<u32>(_wgslsmith_add_u32(0u & arg_0.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a.x, arg_0.a.x, arg_0.a.x), global0.a)), _wgslsmith_clamp_u32(firstLeadingBit(arg_0.a.x), global0.a.x, firstLeadingBit(3924u)), 9065u)));
    return _wgslsmith_div_u32(_wgslsmith_add_u32(min(~(~1u), ~1u), ~arg_0.a.x), ~arg_0.a.x);
}

fn func_4(arg_0: vec4<i32>, arg_1: u32, arg_2: u32, arg_3: u32) -> vec2<i32> {
    var var_0 = max(vec4<u32>(arg_2, ~countOneBits(func_1(Struct_1(global0.a), vec3<bool>(false, false, true), -104f)), arg_1, arg_1), vec4<u32>(~arg_3, ~_wgslsmith_clamp_u32(_wgslsmith_mod_u32(global0.a.x, arg_1), 1u, 31007u), _wgslsmith_mult_u32(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2, arg_1, 4294967295u, arg_2), vec4<u32>(global0.a.x, 4294967295u, 39416u, 4294967295u))), ~global0.a.x), 26252u));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1562f, 1158f)), -374f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -101f) * _wgslsmith_f_op_f32(f32(-1f) * -1386f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-603f - -2276f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-401f, 451f, true))))), -2118f);
    var var_2 = _wgslsmith_dot_vec3_u32(vec3<u32>(global0.a.x, _wgslsmith_mod_u32(firstLeadingBit(1u), 35553u), ~0u), vec3<u32>(_wgslsmith_dot_vec3_u32(global0.a, global0.a >> (vec3<u32>(var_0.x, 0u, arg_3) % vec3<u32>(32u))), var_0.x, ~_wgslsmith_div_u32(arg_3, 75604u)) & global0.a);
    let var_3 = var_1;
    var var_4 = Struct_1(var_0.wyw);
    return arg_0.wx;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<u32>, 7>();
    global1 = _wgslsmith_dot_vec2_i32(func_4(vec4<i32>(_wgslsmith_sub_i32(u_input.a.x, -1i), u_input.a.x, ~(-14261i), -u_input.a.x), global0.a.x, ~firstTrailingBit(max(40844u, global0.a.x)), _wgslsmith_clamp_u32(28657u, _wgslsmith_div_u32(func_1(Struct_1(global0.a), vec3<bool>(true, false, true), 464f), ~4294967295u), ~97042u)), u_input.a.xx);
    let var_0 = 411f;
    let var_1 = 0i;
    let var_2 = Struct_2(1u, Struct_1(_wgslsmith_div_vec3_u32(global0.a, _wgslsmith_clamp_vec3_u32(vec3<u32>(46889u, 0u, 10466u), global0.a, vec3<u32>(global0.a.x, global0.a.x, global0.a.x))) ^ vec3<u32>(min(4294967295u, global0.a.x), ~global0.a.x, global0.a.x)), !(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), true)), var_0, Struct_1((vec3<u32>(global0.a.x, 4294967295u, global0.a.x) | select(global0.a, global0.a, false)) & _wgslsmith_div_vec3_u32(~global0.a, select(global0.a, vec3<u32>(4294967295u, 70440u, 13900u), false))));
    var var_3 = Struct_1(vec3<u32>(0u, 0u, min(1u & _wgslsmith_mult_u32(global0.a.x, var_2.e.a.x), _wgslsmith_sub_u32(countOneBits(37750u), 0u))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(func_2()));
}

