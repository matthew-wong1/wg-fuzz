struct Struct_1 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct Struct_5 {
    a: f32,
    b: f32,
    c: vec2<bool>,
    d: u32,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21>;

var<private> global1: array<Struct_3, 10>;

var<private> global2: array<vec2<f32>, 28> = array<vec2<f32>, 28>(vec2<f32>(703f, -411f), vec2<f32>(1207f, -1269f), vec2<f32>(992f, -803f), vec2<f32>(1337f, -1587f), vec2<f32>(-1068f, -338f), vec2<f32>(-742f, -1448f), vec2<f32>(-364f, -1151f), vec2<f32>(871f, -1000f), vec2<f32>(996f, -1287f), vec2<f32>(786f, 753f), vec2<f32>(-1000f, 1203f), vec2<f32>(1556f, -215f), vec2<f32>(-669f, 904f), vec2<f32>(1609f, -1000f), vec2<f32>(-103f, 458f), vec2<f32>(853f, -103f), vec2<f32>(557f, 1000f), vec2<f32>(1000f, 759f), vec2<f32>(1000f, -337f), vec2<f32>(1000f, -1000f), vec2<f32>(706f, 1206f), vec2<f32>(1000f, 923f), vec2<f32>(-1108f, 665f), vec2<f32>(-232f, -1109f), vec2<f32>(1000f, 1739f), vec2<f32>(103f, -525f), vec2<f32>(1431f, -2514f), vec2<f32>(1756f, -1553f));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: u32) -> vec3<u32> {
    let var_0 = 1i;
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-652f)))), arg_2.x));
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1370f), 402f));
    global0 = array<Struct_1, 21>();
    var var_3 = select(select(select(vec4<bool>(!arg_1.a, all(vec2<bool>(true, arg_1.a)), arg_1.a, false), !select(vec4<bool>(arg_1.a, false, arg_1.a, false), vec4<bool>(arg_1.a, arg_1.a, true, false), vec4<bool>(true, arg_1.a, true, arg_1.a)), vec4<bool>(any(vec4<bool>(arg_1.a, arg_1.a, false, arg_1.a)), !arg_1.a, all(vec2<bool>(false, false)), true)), vec4<bool>(true, true || (u_input.b == 15953i), false, arg_1.a), select(vec4<bool>(arg_1.a, true, arg_1.a, any(vec4<bool>(false, arg_1.a, false, false))), select(vec4<bool>(false, true, arg_1.a, false), !vec4<bool>(false, true, arg_1.a, true), false), vec4<bool>(false, var_2.x <= -1479f, false == arg_1.a, any(vec3<bool>(false, arg_1.a, arg_1.a))))), vec4<bool>(any(!(!vec2<bool>(arg_1.a, arg_1.a))), arg_1.a, false, all(select(select(vec3<bool>(true, arg_1.a, false), vec3<bool>(true, arg_1.a, arg_1.a), vec3<bool>(arg_1.a, arg_1.a, true)), select(vec3<bool>(false, arg_1.a, arg_1.a), vec3<bool>(arg_1.a, false, false), vec3<bool>(true, arg_1.a, true)), arg_1.a & true))), select(select(vec4<bool>(false, true, true, !arg_1.a), select(!vec4<bool>(arg_1.a, arg_1.a, arg_1.a, true), !vec4<bool>(arg_1.a, arg_1.a, false, false), false), true), vec4<bool>(!(u_input.b < u_input.b), arg_1.a, all(vec3<bool>(arg_1.a, true, arg_1.a)) | arg_1.a, arg_1.a), !arg_1.a));
    return ~vec3<u32>(reverseBits(reverseBits(firstTrailingBit(4294967295u))), u_input.d.x, ~(arg_3 | ~0u));
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: vec3<u32>) -> bool {
    global0 = array<Struct_1, 21>();
    var var_0 = _wgslsmith_mod_u32(_wgslsmith_mod_u32(0u, func_3(_wgslsmith_div_f32(arg_1.a.a.x, arg_1.a.a.x), Struct_2(false), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1000f, arg_1.a.a.x))), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.d.x, 0u, arg_2.x), vec4<u32>(4294967295u, arg_2.x, arg_1.a.c.x, 4294967295u))).x), ~arg_2.x) ^ ~((arg_1.a.b.x & arg_2.x) ^ min(arg_1.a.b.x & u_input.a, u_input.a));
    let var_1 = select(false, any(select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(false, false), all(vec2<bool>(true, true))), true)), true);
    var var_2 = vec4<bool>(var_1, false, !(_wgslsmith_f_op_f32(f32(-1f) * -256f) < _wgslsmith_f_op_f32(1000f + arg_1.a.a.x)), true);
    let var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1645f * arg_1.a.a.x))), _wgslsmith_f_op_f32(arg_1.a.a.x * -266f)));
    return !(countOneBits(arg_1.a.b.x) > u_input.a);
}

fn func_2(arg_0: Struct_3) -> bool {
    global2 = array<vec2<f32>, 28>();
    global1 = array<Struct_3, 10>();
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(377f + arg_0.a.a.x)));
    let var_1 = Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1046f) * 906f), _wgslsmith_f_op_f32(floor(-747f)), !vec2<bool>(all(vec3<bool>(true, true, true)), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 63046i), vec2<i32>(19576i, u_input.b)) < countOneBits(u_input.b)), ~40767u, Struct_2(func_4(-39453i, Struct_3(Struct_1(arg_0.a.a, vec4<u32>(11078u, arg_0.a.c.x, u_input.a, arg_0.a.b.x), arg_0.a.b)), ~func_3(var_0, Struct_2(false), vec2<f32>(-1171f, 1138f), arg_0.a.c.x))));
    var var_2 = Struct_3(arg_0.a);
    return var_1.e.a;
}

fn func_1(arg_0: u32, arg_1: vec3<u32>) -> vec3<i32> {
    global2 = array<vec2<f32>, 28>();
    global1 = array<Struct_3, 10>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-114f, _wgslsmith_f_op_f32(ceil(-1111f))))), select(~(~vec4<u32>(u_input.d.x, 0u, arg_0, 25025u)), ~(~vec4<u32>(arg_1.x, arg_1.x, arg_0, 0u)), !vec4<bool>(any(vec3<bool>(true, false, true)), func_2(global1[_wgslsmith_index_u32(1u, 10u)]), select(true, true, true), true)), vec4<u32>(arg_1.x >> (_wgslsmith_dot_vec3_u32(u_input.d, u_input.d) % 32u), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(min(vec3<u32>(58927u, 25678u, u_input.c), vec3<u32>(53913u, arg_1.x, arg_0)), arg_1 << (u_input.d % vec3<u32>(32u))), firstLeadingBit(u_input.c)), 4294967295u, 1u));
    global1 = array<Struct_3, 10>();
    global0 = array<Struct_1, 21>();
    return select(abs(vec3<i32>(-2147483647i & u_input.b, -33504i, -21797i)), vec3<i32>(u_input.b, abs(u_input.b ^ 2147483647i), i32(-1i) * -9217i), select(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), all(vec3<bool>(true, true, false)))) >> (var_0.b.wxx % vec3<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_3, 10>();
    let var_0 = func_1(u_input.c, u_input.d);
    let var_1 = global0[_wgslsmith_index_u32(55542u, 21u)];
    global0 = array<Struct_1, 21>();
    var var_2 = _wgslsmith_div_vec3_i32(var_0, var_0);
    let var_3 = Struct_5(-573f, _wgslsmith_f_op_f32(-519f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_1.a.x + var_1.a.x), _wgslsmith_f_op_f32(891f + var_1.a.x), func_2(Struct_3(Struct_1(var_1.a, var_1.c, vec4<u32>(u_input.d.x, var_1.b.x, var_1.b.x, var_1.b.x)))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-748f - -812f)))))), !(!select(vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(true, true), true), select(vec2<bool>(false, true), vec2<bool>(false, true), false))), u_input.c, Struct_2(true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(441f, var_3.b, var_1.a.x)))))), var_1.c, _wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(-var_1.a.x), var_3.c.x)), _wgslsmith_sub_i32(1i, ~u_input.b));
}

