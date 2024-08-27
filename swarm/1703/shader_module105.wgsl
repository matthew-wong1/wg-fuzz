struct Struct_1 {
    a: i32,
    b: bool,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: vec2<bool>,
    d: vec3<bool>,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(i32(-2147483648), false, -108f, -664f), 4294967295u);

var<private> global1: array<u32, 10> = array<u32, 10>(0u, 0u, 0u, 40185u, 11664u, 0u, 1u, 62070u, 28257u, 0u);

var<private> global2: vec3<u32>;

var<private> global3: Struct_4;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec3<f32>) -> vec2<bool> {
    let var_0 = 65581i;
    var var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_1.x, global0.a.d, 618f, global0.a.c))) + _wgslsmith_f_op_vec4_f32(-global3.a)) + _wgslsmith_f_op_vec4_f32(global3.a * _wgslsmith_f_op_vec4_f32(-global3.a))));
    return select(arg_0, !select(!select(arg_0, vec2<bool>(true, global0.a.b), global0.a.b), arg_0, !(!vec2<bool>(global0.a.b, false))), !select(!arg_0, !select(arg_0, arg_0, true), true));
}

fn func_3() -> u32 {
    global2 = ~(~max(~(~vec3<u32>(30017u, 27837u, 0u)), vec3<u32>(global0.b, ~global1[_wgslsmith_index_u32(56771u, 10u)], _wgslsmith_mod_u32(1u, u_input.a))));
    var var_0 = Struct_2(Struct_1(-35414i, global0.a.b, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.c - 1208f) + _wgslsmith_f_op_f32(step(global3.a.x, global0.a.c))), _wgslsmith_f_op_f32(global0.a.d + -986f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global3.a.x)))))), firstTrailingBit(u_input.a));
    let var_1 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-906f))), _wgslsmith_f_op_f32(max(-2069f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(125f, -574f)), 1000f))))), Struct_1(~_wgslsmith_mult_i32(max(global0.a.a, -12714i), -var_0.a.a), global0.a.b, _wgslsmith_f_op_f32(-754f - _wgslsmith_f_op_f32(min(-1431f, -1000f))), global3.a.x), select(vec2<bool>(!(!global0.a.b), !var_0.a.b), vec2<bool>(_wgslsmith_f_op_f32(exp2(var_0.a.c)) != var_0.a.c, var_0.a.b), (-var_0.a.a >= 1i) != global0.a.b), select(vec3<bool>(global0.a.b, true, select(var_0.a.b && global0.a.b, true, any(vec4<bool>(global0.a.b, false, global0.a.b, false)))), vec3<bool>(true, false, func_1(vec2<bool>(true, true), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.a.d, 1535f, global0.a.c), vec3<f32>(1322f, 899f, global3.a.x)))).x), !select(!vec3<bool>(global0.a.b, true, true), select(vec3<bool>(global0.a.b, true, true), vec3<bool>(false, var_0.a.b, false), vec3<bool>(global0.a.b, global0.a.b, false)), vec3<bool>(true, false, var_0.a.b))));
    let var_2 = Struct_2(global0.a, 18789u);
    global1 = array<u32, 10>();
    return u_input.a;
}

fn func_2(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: f32) -> vec3<f32> {
    global3 = Struct_4(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-global3.a))));
    global0 = Struct_2(arg_0.b, func_3());
    let var_0 = _wgslsmith_clamp_u32(~_wgslsmith_add_u32(0u, global2.x | global2.x), 54666u, ~(~4294967295u));
    var var_1 = global0.a.b;
    global3 = Struct_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1564f - 567f), arg_2, -881f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(trunc(global3.a.x)))))));
    return _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_2)))), -296f, arg_2)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!func_1(vec2<bool>(global0.a.b, !global0.a.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1524f, global0.a.c, -459f)))), vec2<bool>(true, true), vec2<bool>(func_1(func_1(select(vec2<bool>(true, global0.a.b), vec2<bool>(global0.a.b, global0.a.b), global0.a.b), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0.a.c, global0.a.d, global0.a.d)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(Struct_3(global3.a.x, Struct_1(global0.a.a, true, global3.a.x, global0.a.d), vec2<bool>(true, true), vec3<bool>(true, true, true)), vec3<i32>(global0.a.a, global0.a.a, -2147483647i), global3.a.x)) - _wgslsmith_f_op_vec3_f32(global3.a.zzw - global3.a.yxx))).x, false));
    global2 = vec3<u32>(func_3() & (~(global2.x << (0u % 32u)) | ~min(u_input.b, 0u)), firstTrailingBit(6433u), _wgslsmith_dot_vec4_u32(abs(select(vec4<u32>(7241u, global2.x, global2.x, global0.b), vec4<u32>(4294967295u, global2.x, global2.x, 1u), vec4<bool>(var_0.x, var_0.x, true, global0.a.b))) ^ (_wgslsmith_clamp_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(31644u, 10u)], 4294967295u, 4294967295u, global0.b), vec4<u32>(4294967295u, 1u, 4294967295u, 1u), vec4<u32>(0u, 31877u, 0u, global1[_wgslsmith_index_u32(global2.x, 10u)])) ^ firstLeadingBit(vec4<u32>(23344u, global0.b, 52310u, global1[_wgslsmith_index_u32(26646u, 10u)]))), _wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(0u, global1[_wgslsmith_index_u32(1u, 10u)], 4294967295u, global0.b), ~vec4<u32>(global0.b, 17005u, 0u, global1[_wgslsmith_index_u32(global0.b, 10u)]), min(vec4<u32>(global0.b, global2.x, u_input.b, u_input.a), vec4<u32>(global0.b, u_input.a, global0.b, 4294967295u))), abs(vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 10u)], 59943u, 35217u, u_input.b)), abs(~vec4<u32>(4196u, 1u, 0u, global2.x)))));
    global3 = Struct_4(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.d, global3.a.x, global3.a.x, global3.a.x) - global3.a), vec4<f32>(-927f, global0.a.c, 713f, global0.a.c), vec4<bool>(global0.a.b, true, true, false)))), _wgslsmith_f_op_vec4_f32(global3.a * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-151f, global3.a.x, global3.a.x, 1314f)))), !select(!vec4<bool>(global0.a.b, var_0.x, var_0.x, true), select(vec4<bool>(global0.a.b, false, global0.a.b, var_0.x), vec4<bool>(false, var_0.x, false, global0.a.b), true), select(vec4<bool>(true, global0.a.b, false, true), vec4<bool>(var_0.x, false, true, var_0.x), true)))));
    let var_1 = Struct_1(-(~_wgslsmith_clamp_i32(33632i, i32(-1i) * -70343i, -global0.a.a)), true, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-265f, _wgslsmith_f_op_f32(-global0.a.c))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(251f)), global0.a.d)));
    let var_2 = ~vec4<u32>(global0.b, ~_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, 4294967295u), ~global2.xx), firstLeadingBit(u_input.b), global1[_wgslsmith_index_u32(~(global0.b ^ ~23916u), 10u)]);
    let var_3 = Struct_4(vec4<f32>(-392f, 1386f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global3.a.x), _wgslsmith_f_op_f32(round(global3.a.x)))), _wgslsmith_f_op_f32(1224f + _wgslsmith_f_op_f32(f32(-1f) * -1063f))));
    let var_4 = Struct_3(_wgslsmith_f_op_f32(-global3.a.x), Struct_1(-_wgslsmith_sub_i32(_wgslsmith_add_i32(-23543i, var_1.a), select(-43597i, global0.a.a, var_0.x)), global0.a.b, -1000f, var_3.a.x), select(select(!var_0, func_1(vec2<bool>(global0.a.b, true), vec3<f32>(global0.a.d, 380f, 1001f)), var_0), var_0, all(select(vec4<bool>(global0.a.b, var_1.b, false, global0.a.b), select(vec4<bool>(true, false, var_0.x, global0.a.b), vec4<bool>(var_1.b, var_0.x, false, true), vec4<bool>(true, global0.a.b, true, global0.a.b)), !var_1.b))), !(!(!vec3<bool>(global0.a.b, true, var_1.b))));
    let x = u_input.a;
    s_output = StorageBuffer(~1u, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -261f), -1200f, _wgslsmith_f_op_vec3_f32(func_2(var_4, ~vec3<i32>(0i, var_4.b.a, var_4.b.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_4.b.c)) + _wgslsmith_f_op_f32(global3.a.x * 1873f)))).x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1017f * _wgslsmith_div_f32(global0.a.d, var_3.a.x)), _wgslsmith_f_op_vec3_f32(func_2(Struct_3(-447f, Struct_1(-1i, false, 816f, var_3.a.x), var_0, var_4.d), vec3<i32>(-1i, -22239i, var_4.b.a) << (vec3<u32>(global0.b, global0.b, 5990u) % vec3<u32>(32u)), -823f)).x))), _wgslsmith_clamp_vec2_i32(-vec2<i32>(0i, 1i >> (global0.b % 32u)), -vec2<i32>(var_4.b.a, 1i), vec2<i32>(6306i, _wgslsmith_div_i32(~2147483647i, -var_4.b.a))));
}

