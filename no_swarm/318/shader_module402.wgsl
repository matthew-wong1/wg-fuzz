struct Struct_1 {
    a: f32,
    b: bool,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: u32,
    e: i32,
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

var<private> global0: vec2<i32> = vec2<i32>(-1i, -26000i);

var<private> global1: array<Struct_2, 14>;

var<private> global2: Struct_1;

var<private> global3: vec2<f32> = vec2<f32>(2020f, -897f);

var<private> global4: f32 = -278f;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> f32 {
    global4 = 324f;
    var var_0 = max(vec3<u32>(select(1u >> ((u_input.b.x >> (4294967295u % 32u)) % 32u), 68969u, false), _wgslsmith_dot_vec4_u32(~countOneBits(vec4<u32>(u_input.d, u_input.a.x, u_input.c.x, global2.c)), ~u_input.c), _wgslsmith_mult_u32(~(~u_input.a.x), ~u_input.b.x)), vec3<u32>(4294967295u, max(90638u, _wgslsmith_mod_u32(4294967295u, abs(58016u))), _wgslsmith_div_u32(global2.c, ~(22572u & global2.c))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) - global2.a);
    var var_2 = !(!any(!(!vec4<bool>(false, true, true, global2.d))));
    var var_3 = !select(select(select(select(vec4<bool>(false, true, global2.d, true), vec4<bool>(global2.d, global2.d, false, false), vec4<bool>(false, false, global2.b, false)), vec4<bool>(true, global2.d, global2.d, global2.b), global2.b & false), select(select(vec4<bool>(global2.b, global2.b, false, global2.b), vec4<bool>(true, global2.b, false, global2.d), vec4<bool>(true, global2.b, global2.b, global2.d)), select(vec4<bool>(true, global2.b, false, false), vec4<bool>(false, false, true, true), global2.b), !vec4<bool>(true, global2.b, global2.d, global2.d)), select(vec4<bool>(global2.b, false, global2.b, global2.d), select(vec4<bool>(global2.b, true, true, global2.b), vec4<bool>(false, global2.d, global2.d, global2.b), vec4<bool>(global2.d, global2.b, global2.b, false)), true)), select(!vec4<bool>(false, false, global2.d, global2.d), vec4<bool>(true, true, true, !global2.b), global2.d), vec4<bool>(countOneBits(u_input.e) > _wgslsmith_dot_vec2_i32(vec2<i32>(-8012i, global0.x), vec2<i32>(u_input.e, u_input.e)), true, global0.x >= 1i, global2.d));
    return global3.x;
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - global3.x))) <= _wgslsmith_f_op_f32(sign(arg_1.x));
    global0 = vec2<i32>(_wgslsmith_add_i32(global0.x, firstLeadingBit(firstLeadingBit(-2147483647i)) << (u_input.c.x % 32u)), firstTrailingBit(abs(select(u_input.e, 20709i << (global2.c % 32u), var_0))));
    global4 = global3.x;
    global3 = vec2<f32>(_wgslsmith_f_op_f32(-global2.a), global2.a);
    var var_1 = 82583i;
    return Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(900f + 1545f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1019f, _wgslsmith_f_op_f32(global3.x + 1243f))) * global2.a)), false, global2.c ^ (u_input.d ^ _wgslsmith_dot_vec4_u32(~u_input.c, u_input.b ^ u_input.c)), !all(!(!vec2<bool>(true, global2.d))));
}

fn func_1() -> f32 {
    let var_0 = false;
    let var_1 = Struct_2(func_2(vec2<bool>(!(var_0 == var_0), select(select(global2.b, false, true), any(vec4<bool>(global2.b, true, true, true)), false && global2.b)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-2139f, 1226f) + _wgslsmith_f_op_f32(ceil(-261f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(806f - global3.x))))), vec2<bool>(global2.d, true), func_2(vec2<bool>(!func_2(vec2<bool>(global2.d, var_0), vec2<f32>(global2.a, global3.x)).d, any(select(vec2<bool>(true, false), vec2<bool>(true, true), true))), vec2<f32>(_wgslsmith_f_op_f32(round(global3.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.a - global2.a) + -302f))), _wgslsmith_mult_i32(1i, global0.x) << (u_input.a.x % 32u), func_2(select(select(vec2<bool>(global2.b, global2.d), vec2<bool>(global2.d, global2.d), var_0), select(vec2<bool>(true, true), vec2<bool>(false, var_0), select(vec2<bool>(global2.b, false), vec2<bool>(true, global2.d), vec2<bool>(var_0, var_0))), true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(1026f, 562f) - vec2<f32>(268f, global2.a)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.a, global3.x) - vec2<f32>(global3.x, global2.a))))));
    var var_2 = var_1;
    global3 = vec2<f32>(1086f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global2.a)) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1546f + global3.x)))))));
    var_2 = Struct_2(var_1.a, vec2<bool>(var_1.a.b, var_0), var_1.e, global0.x, Struct_1(global2.a, !var_2.a.d, ~_wgslsmith_mod_u32(global2.c | var_2.e.c, ~var_1.c.c), all(var_2.b)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.a * -1198f) - 160f) * 1194f)));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1205f - 1333f))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1496f, global3.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global2.a), -409f, !global2.d)))));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.a, 213f))) - -530f));
    global2 = Struct_1(_wgslsmith_div_f32(-986f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0)) + _wgslsmith_f_op_f32(global3.x - _wgslsmith_f_op_f32(func_1())))), any(select(!vec3<bool>(global2.b, global2.d, false), select(!vec3<bool>(false, global2.b, global2.d), select(vec3<bool>(true, true, false), vec3<bool>(false, true, global2.b), global2.b), vec3<bool>(false, false, global2.d)), (u_input.e == -33880i) | any(vec2<bool>(global2.b, true)))), u_input.d, true);
    var var_1 = -147f;
    var var_2 = Struct_1(-1333f, (_wgslsmith_mod_i32(33375i, 2147483647i) <= _wgslsmith_clamp_i32(-2147483647i, u_input.e, -23510i)) | true, firstLeadingBit(min(abs(_wgslsmith_mod_u32(u_input.d, global2.c)), u_input.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())) != _wgslsmith_f_op_f32(trunc(-156f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(max(_wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(var_2.c, global2.c, 21562u), u_input.a), u_input.c.yyw ^ u_input.c.wzw), u_input.a), ~vec3<u32>(1u << (global2.c % 32u), func_2(vec2<bool>(false, var_2.b), vec2<f32>(global3.x, -1009f)).c, u_input.b.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(744f * _wgslsmith_f_op_f32(-var_0)), var_0)))));
}

