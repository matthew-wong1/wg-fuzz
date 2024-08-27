struct Struct_1 {
    a: f32,
    b: i32,
    c: bool,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec2<bool>,
    d: vec3<u32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: bool,
    c: vec3<i32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: vec4<i32>,
    c: Struct_1,
}

struct Struct_5 {
    a: Struct_3,
    b: vec2<u32>,
    c: Struct_1,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<i32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-1000f, 2147483647i, false, vec2<bool>(true, false));

var<private> global1: Struct_3;

var<private> global2: vec2<bool>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec4<bool> {
    global0 = global1.d;
    var var_0 = global1.d;
    let var_1 = 1u;
    global0 = global1.e;
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1115f, global0.a))))));
    return !select(vec4<bool>(true, true, true, global0.d.x), !(!(!vec4<bool>(false, global0.d.x, global0.d.x, false))), !(global0.b < 0i));
}

fn func_2() -> vec2<bool> {
    var var_0 = vec3<bool>(any(func_3()) || func_3().x, true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1596f)) - global0.a) <= 1340f);
    global0 = global1.e;
    let var_1 = _wgslsmith_f_op_f32(abs(936f));
    global2 = select(global1.d.d, global0.d, (false | (1i > firstTrailingBit(global0.b))) && !all(select(vec4<bool>(true, false, false, global2.x), vec4<bool>(true, false, true, false), vec4<bool>(false, false, var_0.x, global2.x))));
    global0 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(636f)))), _wgslsmith_clamp_i32(firstLeadingBit(-u_input.c.x), 2147483647i, -9677i), false, global1.d.d);
    return var_0.xx;
}

fn func_1() -> Struct_1 {
    global1 = Struct_3(vec4<u32>(118568u, u_input.d.x, 4863u, firstTrailingBit(min(global1.a.x, u_input.a.x))), global0.d.x, ~abs(_wgslsmith_sub_vec3_i32(vec3<i32>(global1.e.b, u_input.e, global1.c.x), select(u_input.c.zyw, u_input.c.wxz, vec3<bool>(true, global2.x, global2.x)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1229f + _wgslsmith_f_op_f32(-global0.a))), global0.b, global1.b, !func_2()), Struct_1(global1.d.a, 23052i, true, vec2<bool>(global0.c, !global0.c)));
    var var_0 = _wgslsmith_f_op_f32(floor(2116f));
    var var_1 = global1.a.x;
    let var_2 = vec2<bool>(true & (global0.b <= ~(~global0.b)), true);
    var var_3 = Struct_5(Struct_3(global1.a, all(vec4<bool>(global1.b, true, true, false)), countOneBits(firstTrailingBit(global1.c)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a + global1.d.a) + global0.a), -24214i, 45239u <= global1.a.x, vec2<bool>(global0.a > global0.a, !global2.x)), global1.e), vec2<u32>(_wgslsmith_add_u32(u_input.b, 12382u), 3252u), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(738f + global1.e.a) - 1021f) - -659f), 42684i, true, global0.d), reverseBits(vec4<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(28999u, 0u), vec2<u32>(u_input.d.x, 42390u)), firstTrailingBit(_wgslsmith_mod_u32(38908u, 15356u)), _wgslsmith_sub_u32(global1.a.x, global1.a.x ^ 1u), 1u)));
    return global1.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c;
    global2 = vec2<bool>((u_input.b << (~0u % 32u)) > abs(~max(4294967295u, 4294967295u)), ~reverseBits(1u << (u_input.b % 32u)) < ~global1.a.x);
    global0 = Struct_1(_wgslsmith_f_op_f32(abs(global0.a)), 1i, global0.d.x, select(vec2<bool>(true, global1.b), !vec2<bool>(52676u >= u_input.b, any(vec2<bool>(false, false))), !global0.d));
    global1 = Struct_3(global1.a, true, var_0.wyy, Struct_1(1795f, var_0.x, !global2.x, select(global1.e.d, vec2<bool>(global2.x | global1.b, true), global0.d.x)), func_1());
    var var_1 = Struct_5(Struct_3(_wgslsmith_mod_vec4_u32(vec4<u32>(~u_input.b, global1.a.x, _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(6344u, 1u, global1.a.x)), 49605u), reverseBits(vec4<u32>(17925u, 4294967295u, 91388u, 0u)) >> (global1.a % vec4<u32>(32u))), global0.a > -1000f, vec3<i32>(_wgslsmith_clamp_i32(~global0.b, 2147483647i, var_0.x), -1i, firstTrailingBit(i32(-1i) * -17916i)), func_1(), global1.d), ~u_input.a.zy, global1.e, vec4<u32>(66509u, global1.a.x ^ _wgslsmith_mult_u32(~55127u, u_input.a.x), ~u_input.a.x, u_input.a.x));
    let var_2 = Struct_5(var_1.a, abs(vec2<u32>(u_input.a.x, _wgslsmith_clamp_u32(~u_input.d.x, ~u_input.b, 1u >> (u_input.a.x % 32u)))), global1.e, ~vec4<u32>(u_input.d.x, ~10107u, firstLeadingBit(firstLeadingBit(global1.a.x)), ~_wgslsmith_add_u32(19056u, var_1.b.x)));
    var var_3 = vec3<i32>(-1i, ~global1.d.b, 0i);
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-440f, var_1.c.a, -210f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-494f, -1631f, var_2.c.a), vec3<f32>(-183f, -396f, var_2.a.e.a), vec3<bool>(global2.x, false, global0.d.x))))))) - vec3<f32>(_wgslsmith_div_f32(var_2.c.a, global0.a), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1389f))), global1.e.a)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-822f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_4.x, -257f) + global1.e.a))))), firstTrailingBit(~firstTrailingBit(vec3<u32>(var_1.b.x, 4294967295u, u_input.d.x))));
}

