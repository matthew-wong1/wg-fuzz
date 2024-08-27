struct Struct_1 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<u32>,
    c: bool,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 158f;

var<private> global1: Struct_2 = Struct_2(53061i, vec3<u32>(0u, 40416u, 35833u), true);

var<private> global2: array<i32, 18>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
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

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: bool, arg_1: i32) -> i32 {
    let var_0 = vec2<bool>(all(select(vec4<bool>(true, !global1.c, true || arg_0, false), !vec4<bool>(false, global1.c, true, false), select(any(vec3<bool>(false, arg_0, global1.c)), true, any(vec2<bool>(global1.c, arg_0))))), arg_0);
    var var_1 = Struct_3(!(all(select(vec3<bool>(true, var_0.x, true), vec3<bool>(arg_0, true, false), true)) || !arg_0), Struct_2(countOneBits(-14554i), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, 23986u, 1u) << (vec3<u32>(u_input.a.x, global1.b.x, global1.b.x) % vec3<u32>(32u)), global1.b, vec3<u32>(global1.b.x, 2684u, 47833u)) >> (~(u_input.b.yzz << (global1.b % vec3<u32>(32u))) % vec3<u32>(32u)), !any(vec2<bool>(true, true))), Struct_1(u_input.b.x, ~u_input.b));
    var var_2 = vec4<f32>(106f, 508f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(903f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(686f - 639f))))), _wgslsmith_f_op_f32(f32(-1f) * -561f));
    let var_3 = vec3<i32>(~24474i, -(0i >> (~var_1.b.b.x % 32u)), firstLeadingBit(var_1.b.a) << (~15121u % 32u));
    return abs(arg_1);
}

fn func_2(arg_0: u32, arg_1: vec3<f32>, arg_2: i32, arg_3: vec2<f32>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(min(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_1.x * arg_3.x)))))));
    let var_1 = Struct_4(Struct_1(u_input.a.x, ~_wgslsmith_clamp_vec4_u32(u_input.b, ~vec4<u32>(1u, 17560u, u_input.a.x, 4294967295u), vec4<u32>(arg_0, 21443u, 1u, u_input.b.x))), -51420i, _wgslsmith_div_f32(-1951f, _wgslsmith_f_op_f32(sign(654f))), global1.c);
    let var_2 = Struct_2(~abs(arg_2), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, firstTrailingBit(0u), abs(76969u)), vec3<u32>(global1.b.x, u_input.a.x, 0u) ^ ~global1.b) << (global1.b % vec3<u32>(32u)), false);
    global2 = array<i32, 18>();
    let var_3 = vec4<i32>(_wgslsmith_div_i32(func_3(var_1.d, global1.a), arg_2), arg_2, -8473i, arg_2 | global2[_wgslsmith_index_u32(~var_1.a.b.x, 18u)]);
    return 2654u;
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: vec3<i32>) -> f32 {
    let var_0 = 33349u;
    let var_1 = Struct_1(~_wgslsmith_mod_u32(_wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.b.x, 1u), 56143u), _wgslsmith_add_u32(~global1.b.x, var_0 & 5166u)), vec4<u32>(global1.b.x, 4294967295u, _wgslsmith_sub_u32(60649u, func_2(1u, vec3<f32>(429f, 892f, -160f), arg_2.x, vec2<f32>(689f, -375f))) | reverseBits(16671u), var_0));
    let var_2 = Struct_3(false, Struct_2(abs(global2[_wgslsmith_index_u32(max(22768u, _wgslsmith_add_u32(96902u, 1u)), 18u)]), global1.b, !global1.c), Struct_1(var_0, ((vec4<u32>(u_input.b.x, global1.b.x, 4294967295u, 4294967295u) & var_1.b) & var_1.b) & (var_1.b << (select(vec4<u32>(global1.b.x, 4294967295u, var_1.a, 30751u), vec4<u32>(var_0, var_1.b.x, global1.b.x, global1.b.x), vec4<bool>(arg_0, false, true, true)) % vec4<u32>(32u)))));
    var var_3 = !(!select(select(!vec3<bool>(arg_0, true, true), !vec3<bool>(var_2.b.c, arg_0, arg_0), !vec3<bool>(true, var_2.a, true)), vec3<bool>(any(vec3<bool>(false, false, arg_1)), true, all(vec2<bool>(false, global1.c))), var_2.b.c));
    global2 = array<i32, 18>();
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-112f)))) + 1227f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1755f)) - _wgslsmith_f_op_f32(-943f - _wgslsmith_f_op_f32(sign(728f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_f32(-155f, _wgslsmith_f_op_f32(select(1475f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(global1.c, true, vec3<i32>(global1.a, 0i, -3016i)))), global1.c & global1.c)));
    global1 = Struct_2(-select(~(-9338i), -2147483647i, all(vec2<bool>(false, global1.c))) << (1u % 32u), countOneBits(vec3<u32>(~(~global1.b.x), u_input.a.x, global1.b.x)), false);
    global2 = array<i32, 18>();
    var var_1 = true;
    let var_2 = Struct_3(false, Struct_2(_wgslsmith_sub_i32(62155i, -(~global1.a)), u_input.b.zwz, all(!select(vec4<bool>(global1.c, true, global1.c, true), vec4<bool>(true, false, true, global1.c), global1.c))), Struct_1(_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(23259u, global1.b.x, 15093u)), firstLeadingBit(u_input.b.xwz)) << (_wgslsmith_dot_vec3_u32(global1.b, global1.b) % 32u), select(select(vec4<u32>(u_input.a.x, u_input.b.x, global1.b.x, 32316u), u_input.b, global1.c), ~u_input.b, !vec4<bool>(false, global1.c, global1.c, global1.c)) ^ u_input.b));
    global1 = var_2.b;
    let var_3 = Struct_3(!any(vec4<bool>(true, any(vec3<bool>(false, global1.c, false)), true, !var_2.a)), var_2.b, Struct_1(~(1u ^ u_input.b.x), firstLeadingBit(var_2.c.b)));
    var var_4 = Struct_1(var_2.c.b.x, ~(vec4<u32>(0u, 92572u, var_2.c.a, 44061u) >> ((abs(var_3.c.b) | vec4<u32>(0u, u_input.b.x, var_3.c.b.x, var_3.c.a)) % vec4<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(64482i, vec3<i32>(~global2[_wgslsmith_index_u32(abs(global1.b.x), 18u)], abs(1i), _wgslsmith_add_i32(var_2.b.a, var_2.b.a) | ~(-1i)) | vec3<i32>(select(var_3.b.a ^ 0i, -1i, false), 1i, var_2.b.a), -366f);
}

