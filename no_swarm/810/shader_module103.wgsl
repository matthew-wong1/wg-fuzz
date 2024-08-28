struct Struct_1 {
    a: vec3<bool>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<bool>(false, false, false), vec4<bool>(false, false, false, false));

var<private> global1: array<Struct_1, 6>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec3<u32> {
    let var_0 = Struct_1(global0.b.yxw, select(select(global0.b, vec4<bool>(true, !global0.a.x, global0.a.x, true), !global0.a.x), global0.b, select(select(select(vec4<bool>(global0.b.x, true, true, global0.b.x), global0.b, global0.b.x), global0.b, !global0.b), vec4<bool>(!global0.b.x, all(vec4<bool>(global0.a.x, true, global0.a.x, true)), false, global0.a.x && global0.b.x), true)));
    let var_1 = Struct_1(global0.a, select(var_0.b, !global0.b, !(true || any(var_0.b.xx))));
    global1 = array<Struct_1, 6>();
    let var_2 = Struct_1(select(vec3<bool>(-1649f > _wgslsmith_f_op_f32(sign(137f)), global0.a.x, false), vec3<bool>(false, true, var_1.a.x), !select(!global0.a, var_0.b.wyz, select(vec3<bool>(var_1.b.x, true, var_0.b.x), var_0.a, vec3<bool>(false, true, var_0.b.x)))), select(vec4<bool>(global0.a.x, !var_0.a.x, any(!vec2<bool>(var_1.a.x, var_0.a.x)), var_1.b.x), select(vec4<bool>(var_0.b.x && var_1.a.x, all(vec2<bool>(true, var_0.b.x)), var_0.b.x, var_1.b.x), vec4<bool>(false, any(vec4<bool>(false, true, true, false)), !var_0.a.x, !var_1.a.x), vec4<bool>(!var_1.b.x, false & var_1.a.x, !var_1.a.x, false)), all(select(vec3<bool>(global0.a.x, false, var_1.b.x), !vec3<bool>(global0.b.x, var_1.b.x, true), select(vec3<bool>(false, false, true), vec3<bool>(true, global0.b.x, false), global0.b.yyw)))));
    var var_3 = -790f;
    return vec3<u32>(max(min(u_input.b, select(u_input.a, u_input.a, var_2.a.x)), abs(~91312u)), u_input.b, 1u) >> (max(~(vec3<u32>(u_input.a, u_input.a, u_input.b) >> (vec3<u32>(0u, u_input.a, 2186u) % vec3<u32>(32u))), ~vec3<u32>(50003u, 590u, u_input.b) << (~vec3<u32>(2060u, 4294967295u, 4294967295u) % vec3<u32>(32u))) % vec3<u32>(32u));
}

fn func_2(arg_0: vec4<bool>) -> Struct_1 {
    global1 = array<Struct_1, 6>();
    let var_0 = u_input.c.x >> (1u % 32u);
    let var_1 = global0.b.xyz;
    var var_2 = _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_div_u32(abs(u_input.b), 7386u), ~86932u, ~abs(25017u)) & abs(abs(vec3<u32>(u_input.b, u_input.b, 1u)) & min(vec3<u32>(u_input.a, u_input.a, u_input.b), vec3<u32>(u_input.b, u_input.b, u_input.a))), countOneBits(func_3() & vec3<u32>(min(u_input.a, u_input.a), _wgslsmith_clamp_u32(u_input.a, 22854u, u_input.b), ~u_input.a)));
    var var_3 = global1[_wgslsmith_index_u32(u_input.a, 6u)];
    return global1[_wgslsmith_index_u32(firstLeadingBit(var_2.x), 6u)];
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec2<u32>) -> vec4<bool> {
    let var_0 = arg_1.a.x;
    global1 = array<Struct_1, 6>();
    global1 = array<Struct_1, 6>();
    var var_1 = -12459i;
    global0 = Struct_1(select(arg_1.a, !arg_1.b.yzw, func_2(global0.b).a.x), global0.b);
    return !select(global0.b, !(!global0.b), var_0 || false);
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<bool>) -> i32 {
    let var_0 = global0.b.x;
    let var_1 = arg_1;
    var var_2 = Struct_1(!select(vec3<bool>(arg_1.b.x, !arg_2.a.x, false), !func_4(arg_0, Struct_1(vec3<bool>(arg_1.a.x, true, arg_1.b.x), var_1.b), vec2<u32>(u_input.b, u_input.a)).zyy, select(global0.a, !var_1.a, global0.b.wzw)), vec4<bool>(arg_3.x, arg_3.x, arg_2.b.x, any(vec4<bool>(true, arg_0 == 1018f, true, -1960f < arg_0))));
    global1 = array<Struct_1, 6>();
    var_2 = global1[_wgslsmith_index_u32(~1u, 6u)];
    return _wgslsmith_sub_i32(firstTrailingBit(_wgslsmith_add_i32(1i, u_input.c.x)), ~u_input.c.x);
}

fn func_1() -> u32 {
    var var_0 = !global0.a.x;
    global1 = array<Struct_1, 6>();
    var var_1 = func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-117f + -272f) - _wgslsmith_f_op_f32(f32(-1f) * -1301f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1489f) + _wgslsmith_f_op_f32(f32(-1f) * -1191f)), -1095f)), Struct_1(select(!global0.a, global0.a, global0.a.x), global0.b), Struct_1(!global0.b.yzy, func_4(_wgslsmith_f_op_f32(-919f - _wgslsmith_f_op_f32(731f - 383f)), func_2(!global0.b), ~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, u_input.a), vec2<u32>(0u, u_input.a)))), select(func_4(_wgslsmith_f_op_f32(select(437f, _wgslsmith_f_op_f32(select(460f, 148f, false)), false)), func_2(vec4<bool>(true, false, false, false)), countOneBits(vec2<u32>(u_input.b, u_input.b) | vec2<u32>(u_input.b, 81509u))), func_2(vec4<bool>(true, false, true, select(global0.a.x, global0.b.x, global0.b.x))).b, select(func_4(_wgslsmith_f_op_f32(f32(-1f) * -1171f), func_2(vec4<bool>(global0.a.x, true, global0.a.x, global0.a.x)), vec2<u32>(1u, u_input.b)), vec4<bool>(true || global0.a.x, !global0.b.x, func_4(-1354f, Struct_1(global0.a, vec4<bool>(true, false, global0.b.x, global0.b.x)), vec2<u32>(u_input.a, 1u)).x, global0.b.x), ~(-1i) >= u_input.c.x)));
    global0 = global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(max(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, 1u, u_input.a, 16698u), vec4<u32>(0u, u_input.b, 0u, 62583u)), min(vec4<u32>(u_input.a, 4294967295u, u_input.a, 72029u), vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a))), ~(vec4<u32>(u_input.a, u_input.a, 1u, 39102u) ^ vec4<u32>(28757u, u_input.b, u_input.a, u_input.b))) >> (min(_wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.b >> (u_input.a % 32u), u_input.b), ~u_input.a >> (_wgslsmith_clamp_u32(27155u, 36072u, 1u) % 32u)), ~_wgslsmith_add_u32(abs(u_input.a), u_input.a)) % 32u), 6u)];
    var var_2 = global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(1u, min(~abs(1u), abs(reverseBits(15365u)))), 6u)];
    return select(u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.b, 14576u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(11262u, 115104u, 0u), vec3<u32>(u_input.a, u_input.a, u_input.b))), ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(11755u, 1u, 4294967295u, u_input.a), vec4<u32>(0u, 55521u, 10457u, 137186u)))), global0.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(select(vec3<bool>(global0.b.x, true, global0.a.x), select(vec3<bool>(true, all(global0.b), global0.b.x), vec3<bool>(false, global0.b.x, global0.b.x), false), _wgslsmith_sub_u32(1u, func_1()) > (~14313u | u_input.b)), vec4<bool>(global0.b.x, !func_4(-271f, global1[_wgslsmith_index_u32(u_input.a, 6u)], vec2<u32>(7048u, 4294967295u)).x && false, !(23356u >= u_input.b), false));
    var var_1 = func_2(var_0.b);
    let var_2 = ~(~vec2<u32>(1u, u_input.a));
    let var_3 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_div_u32(var_2.x, 4294967295u), max(u_input.a, 1u), ~func_3().x), 6u)];
    var var_4 = ~var_2.x;
    global0 = Struct_1(!global0.a, vec4<bool>(any(!global0.b.xz), true != var_1.b.x, true, any(!vec2<bool>(var_0.a.x, global0.a.x)) & all(var_3.a)));
    var var_5 = global1[_wgslsmith_index_u32(56595u, 6u)];
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_vec4_u32(reverseBits(_wgslsmith_add_vec4_u32(vec4<u32>(1u, u_input.b, var_2.x, 78758u), vec4<u32>(4294967295u, 14724u, 19549u, u_input.a))), vec4<u32>(u_input.a, u_input.b, u_input.b, u_input.a) << (countOneBits(vec4<u32>(4294967295u, var_2.x, 6296u, var_2.x)) % vec4<u32>(32u))), 0u | u_input.b, 43863u, -u_input.c.x);
}

