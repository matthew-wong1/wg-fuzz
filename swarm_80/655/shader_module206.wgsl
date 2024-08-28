struct Struct_1 {
    a: bool,
    b: i32,
    c: vec2<u32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<f32>,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -478f;

var<private> global1: array<Struct_2, 1> = array<Struct_2, 1>(Struct_2(1u));

var<private> global2: array<Struct_1, 27>;

var<private> global3: array<u32, 28> = array<u32, 28>(42808u, 1u, 15362u, 65141u, 4294967295u, 2303u, 1u, 1u, 3799u, 86011u, 0u, 4294967295u, 1u, 0u, 1u, 0u, 44528u, 129083u, 93394u, 40086u, 1u, 12311u, 4294967295u, 1036u, 23559u, 0u, 0u, 4294967295u);

var<private> global4: array<bool, 14>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_1(arg_0: u32) -> vec4<u32> {
    var var_0 = 387f;
    var var_1 = max(vec3<u32>(u_input.b.x, reverseBits(abs(0u)), ~_wgslsmith_add_u32(abs(arg_0), 8575u)), ~_wgslsmith_div_vec3_u32(~vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b.x, 28u)], 28u)], 4294967295u, 65565u), vec3<u32>(u_input.b.x, 1u, 1u)));
    let var_2 = Struct_4(global1[_wgslsmith_index_u32(~0u, 1u)], true);
    global3 = array<u32, 28>();
    global4 = array<bool, 14>();
    return _wgslsmith_sub_vec4_u32(~max(reverseBits(vec4<u32>(global3[_wgslsmith_index_u32(33778u, 28u)], 50770u, global3[_wgslsmith_index_u32(arg_0, 28u)], 28190u)), ~(u_input.b << (u_input.b % vec4<u32>(32u)))), abs(u_input.b));
}

fn func_3(arg_0: Struct_4) -> u32 {
    global3 = array<u32, 28>();
    var var_0 = max(0u | _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a.a, global3[_wgslsmith_index_u32(43697u, 28u)], 857u), u_input.b.wyx), ~global3[_wgslsmith_index_u32(u_input.b.x, 28u)]), global3[_wgslsmith_index_u32(26579u, 28u)]) & global3[_wgslsmith_index_u32(firstLeadingBit(u_input.b.x), 28u)];
    var var_1 = vec3<bool>(!(17533u >= (~arg_0.a.a | 1u)), any(select(vec2<bool>(all(vec3<bool>(false, global4[_wgslsmith_index_u32(6255u, 14u)], arg_0.b)), global4[_wgslsmith_index_u32(4294967295u, 14u)]), vec2<bool>(global4[_wgslsmith_index_u32(u_input.b.x, 14u)], global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), u_input.b.zw), 14u)]), arg_0.b)), global4[_wgslsmith_index_u32(func_1(_wgslsmith_clamp_u32(arg_0.a.a, 1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 28u)], 28u)])).x << ((_wgslsmith_mod_u32(u_input.b.x, 4294967295u) & 0u) % 32u), 14u)] || all(vec2<bool>(true, true)));
    global1 = array<Struct_2, 1>();
    var var_2 = global4[_wgslsmith_index_u32(arg_0.a.a, 14u)];
    return arg_0.a.a;
}

fn func_2(arg_0: vec3<f32>) -> Struct_2 {
    global3 = array<u32, 28>();
    var var_0 = vec3<bool>(!(!select(global4[_wgslsmith_index_u32(func_3(Struct_4(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 28u)], 28u)], 1u)], false)), 14u)], all(vec3<bool>(global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(11531u, 28u)], 14u)], global4[_wgslsmith_index_u32(0u, 14u)], global4[_wgslsmith_index_u32(54528u, 14u)])), !global4[_wgslsmith_index_u32(86869u, 14u)])), ~(_wgslsmith_mult_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 28u)], 28u)], u_input.b.x) & ~u_input.b.x) == ~_wgslsmith_mult_u32(~global3[_wgslsmith_index_u32(8875u, 28u)], ~u_input.b.x), false);
    let var_1 = Struct_2(~_wgslsmith_sub_u32(0u, global3[_wgslsmith_index_u32(u_input.b.x & 4294967295u, 28u)]));
    var var_2 = func_1(~97200u);
    var var_3 = global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 28u)], 27u)];
    return var_1;
}

fn func_4(arg_0: vec4<bool>, arg_1: bool, arg_2: Struct_3, arg_3: Struct_1) -> Struct_4 {
    var var_0 = arg_3.c.x;
    global4 = array<bool, 14>();
    var var_1 = Struct_4(arg_2.c, global4[_wgslsmith_index_u32(arg_3.c.x, 14u)]);
    let var_2 = arg_0.zzz;
    var var_3 = Struct_4(arg_2.a, all(select(arg_0.zxz, vec3<bool>(global4[_wgslsmith_index_u32(66015u, 14u)], arg_0.x, arg_0.x), vec3<bool>(true, false, arg_3.a))) == true);
    return Struct_4(Struct_2(var_3.a.a), var_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(vec4<bool>(true, true, all(vec2<bool>(false | global4[_wgslsmith_index_u32(4294967295u, 14u)], all(vec4<bool>(true, global4[_wgslsmith_index_u32(u_input.b.x, 14u)], global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b.x, 28u)], 14u)], global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b.x, 28u)], 14u)])))), !(!global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b.x, 28u)], 14u)]) && global4[_wgslsmith_index_u32(4294967295u, 14u)]), !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(134f, -288f)) + _wgslsmith_f_op_f32(step(-110f, -133f))) != _wgslsmith_f_op_f32(ceil(-957f))), Struct_3(Struct_2(1u), firstLeadingBit(~func_1(u_input.b.x)), global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(23115u, 28u)], 1u)], func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-864f, -640f, -1453f), vec3<f32>(886f, -689f, 906f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(501f, 169f, -1075f))))), global2[_wgslsmith_index_u32(1u, 27u)]);
    global1 = array<Struct_2, 1>();
    global3 = array<u32, 28>();
    let var_1 = var_0;
    var var_2 = var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, ~u_input.b.xy, vec4<f32>(-1622f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-396f - 218f)), 470f), _wgslsmith_f_op_f32(2719f + 1f), _wgslsmith_div_f32(871f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1160f), 732f))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1272f, -116f, -687f, -1363f), vec4<f32>(109f, 662f, -372f, -1599f), var_1.b)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(511f, 163f, -1112f, 524f) - vec4<f32>(745f, 704f, -845f, 431f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(184f, 725f, -1137f, -333f), vec4<f32>(-914f, -436f, 827f, -894f), global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_0.a.a, 28u)], 14u)])))))), ~_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(50216u, 28u)], var_0.a.a, 0u), vec3<u32>(var_0.a.a, 1u, 1u)) << (~vec3<u32>(0u, global3[_wgslsmith_index_u32(0u, 28u)], 0u) % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(min(u_input.b.yxz, vec3<u32>(20435u, global3[_wgslsmith_index_u32(var_1.a.a, 28u)], 38122u)), ~vec3<u32>(1u, var_2.a, 32177u))));
}

