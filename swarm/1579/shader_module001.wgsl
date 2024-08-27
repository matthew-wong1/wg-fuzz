struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-5932i, -3902i);

var<private> global1: array<Struct_1, 22>;

var<private> global2: f32 = 156f;

var<private> global3: Struct_1 = Struct_1(vec2<bool>(true, false), true, 1000f);

var<private> global4: i32 = 2147483647i;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_1) -> vec3<i32> {
    let var_0 = arg_0;
    let var_1 = global0.x;
    let var_2 = _wgslsmith_mod_vec4_u32(abs(~vec4<u32>(126567u, u_input.b.x, 0u, 53000u)), vec4<u32>(countOneBits(u_input.b.x), ~u_input.a, 1u, ~14325u) << (min(~vec4<u32>(35909u, u_input.b.x, 24341u, u_input.b.x), select(vec4<u32>(22088u, 33934u, 4294967295u, u_input.b.x), vec4<u32>(u_input.a, u_input.a, u_input.b.x, 1u), vec4<bool>(global3.a.x, arg_0.a.x, var_0.a.x, true))) % vec4<u32>(32u))) << (vec4<u32>(~58135u, select(~(4294967295u ^ u_input.b.x), abs(~u_input.b.x), true), 67961u, reverseBits(_wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.b.x, u_input.b.x), u_input.b.x))) % vec4<u32>(32u));
    let var_3 = Struct_1(!vec2<bool>(true, arg_0.b), var_0.a.x, global3.c);
    global2 = var_0.c;
    return vec3<i32>(-global0.x, global0.x, _wgslsmith_mult_i32(2147483647i, -min(-1i, global0.x)));
}

fn func_4(arg_0: vec3<i32>, arg_1: bool) -> bool {
    global1 = array<Struct_1, 22>();
    var var_0 = vec3<u32>(4294967295u, _wgslsmith_clamp_u32(17215u, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 1u, u_input.a, 1u), vec4<u32>(21678u, u_input.b.x, u_input.a, 57617u)), vec4<u32>(4388u, u_input.b.x, 19245u, u_input.b.x)), _wgslsmith_div_vec4_u32(vec4<u32>(52161u, 4294967295u, 36670u, 39522u), vec4<u32>(u_input.b.x, u_input.b.x, 7282u, u_input.a)) >> (~vec4<u32>(u_input.a, u_input.a, 1u, u_input.b.x) % vec4<u32>(32u))), 4294967295u), ~abs(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.a, u_input.a), firstTrailingBit(vec3<u32>(36109u, u_input.b.x, 0u)))));
    var_0 = u_input.b;
    global0 = vec2<i32>(-1i, firstLeadingBit(~_wgslsmith_mod_i32(global0.x, select(1i, arg_0.x, arg_1))));
    let var_1 = global1[_wgslsmith_index_u32(78500u, 22u)];
    return true;
}

fn func_2() -> vec4<u32> {
    var var_0 = ~u_input.b.yz;
    let var_1 = global1[_wgslsmith_index_u32(u_input.b.x, 22u)];
    global3 = Struct_1(select(var_1.a, select(!vec2<bool>(var_1.b, var_1.b), !vec2<bool>(var_1.a.x, false), false), func_4(~vec3<i32>(1i, 2147483647i, -6159i) | func_3(global1[_wgslsmith_index_u32(5204u, 22u)]), global3.a.x)), global3.b, global3.c);
    var var_2 = 0i;
    var var_3 = global1[_wgslsmith_index_u32(67084u, 22u)];
    return vec4<u32>(25958u, ~1u, u_input.a, 20931u);
}

fn func_1(arg_0: u32, arg_1: vec3<bool>, arg_2: bool) -> vec4<u32> {
    var var_0 = _wgslsmith_add_vec4_u32(~(~vec4<u32>(30393u, arg_0, ~89818u, _wgslsmith_mod_u32(u_input.a, arg_0))), vec4<u32>(66252u, arg_0, ~0u, _wgslsmith_mult_u32(u_input.a, u_input.a)));
    return _wgslsmith_sub_vec4_u32(~(func_2() | (vec4<u32>(0u, 1843u, 80336u, var_0.x) >> (vec4<u32>(1606u, u_input.a, 60424u, 1u) % vec4<u32>(32u)))) ^ ~(_wgslsmith_add_vec4_u32(vec4<u32>(72629u, arg_0, u_input.b.x, 0u), vec4<u32>(1u, var_0.x, 24210u, 0u)) << (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 0u, u_input.a, arg_0), vec4<u32>(1u, 12990u, 4294967295u, arg_0)) % vec4<u32>(32u))), ~(~(~select(vec4<u32>(44186u, arg_0, var_0.x, 1u), vec4<u32>(67692u, 0u, u_input.b.x, arg_0), vec4<bool>(arg_2, false, true, arg_1.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 22>();
    let var_0 = ~(u_input.a ^ (50175u ^ ~(~u_input.a)));
    let var_1 = vec4<bool>(!(!all(!vec3<bool>(global3.a.x, global3.a.x, true))), true, u_input.a > (u_input.b.x ^ _wgslsmith_mult_u32(~u_input.b.x, ~97118u)), true);
    var var_2 = vec4<u32>(var_0, ~_wgslsmith_dot_vec2_u32(firstTrailingBit(u_input.b.zy), ~vec2<u32>(u_input.a, 1u)), 4294967295u, var_0) << (func_1(var_0 << (~(4294967295u >> (1u % 32u)) % 32u), select(!select(vec3<bool>(var_1.x, true, false), vec3<bool>(false, global3.b, false), vec3<bool>(var_1.x, false, true)), !vec3<bool>(var_1.x, var_1.x, true), vec3<bool>(54650u >= var_0, true, select(true, true, true))), all(var_1.yy)) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(~(~1i), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1316f, global3.c, 259f, global3.c)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global3.c, global3.c, 1093f, -162f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.c, global3.c, -587f, -643f)) + vec4<f32>(786f, global3.c, global3.c, -1966f))))), vec2<i32>(~global0.x, global0.x << (35058u % 32u)));
}

