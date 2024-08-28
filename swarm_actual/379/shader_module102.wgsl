struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: u32,
    d: i32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
    c: vec4<u32>,
    d: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
}

struct Struct_5 {
    a: vec4<bool>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<u32>) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-arg_0.b), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a, arg_0.a) + vec2<f32>(-1000f, 3128f)))) + vec2<f32>(-1000f, arg_0.a)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(arg_0.b, arg_0.b))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1633f, arg_0.b.x) + vec2<f32>(arg_0.a, arg_0.a)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(arg_0.b * vec2<f32>(-167f, arg_0.a))))), vec2<bool>(any(!select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true))), false)));
    global0 = 1i;
    global0 = u_input.b.x;
    var_0 = arg_0.b;
    var var_1 = -222f;
    return vec3<u32>(u_input.c.x, _wgslsmith_dot_vec2_u32(~vec2<u32>(firstTrailingBit(u_input.a.x), 0u), u_input.a), _wgslsmith_mult_u32(~23109u, 4126u >> (~u_input.c.x % 32u)));
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: Struct_3) -> vec3<bool> {
    var var_0 = _wgslsmith_add_vec3_u32(select(firstTrailingBit(u_input.c), u_input.c, _wgslsmith_f_op_f32(abs(arg_0.x)) >= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.x * arg_1.b.x)))), _wgslsmith_mult_vec3_u32(u_input.c ^ countOneBits(~vec3<u32>(u_input.a.x, arg_2.c.x, 22520u)), func_3(arg_1, vec3<u32>(firstLeadingBit(4294967295u), min(arg_2.c.x, 21944u), u_input.a.x))));
    let var_1 = Struct_4(Struct_1(arg_2.c.wz, vec2<bool>(arg_0.x != -1328f, all(vec2<bool>(true, false))), ~(~(~u_input.c.x)), -2147483647i, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(-371f)), -1173f) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1000f, 582f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1340f, 591f)))))), Struct_3(vec2<i32>(-arg_2.a.x, -1i), Struct_2(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_1.a, arg_0.x), arg_0)) * arg_2.b.b)), _wgslsmith_div_vec4_u32(arg_2.c, arg_2.c), -40187i));
    var var_2 = Struct_4(var_1.a, arg_2);
    let var_3 = Struct_5(!select(select(select(vec4<bool>(var_1.a.b.x, false, var_2.a.b.x, false), vec4<bool>(var_1.a.b.x, true, var_1.a.b.x, false), vec4<bool>(var_1.a.b.x, false, var_2.a.b.x, var_1.a.b.x)), vec4<bool>(true, false, var_2.a.b.x, var_1.a.b.x), vec4<bool>(var_2.a.b.x, false, false, var_1.a.b.x)), vec4<bool>(true, var_1.a.b.x || var_2.a.b.x, any(var_1.a.b), !var_1.a.b.x), var_2.a.b.x), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, _wgslsmith_mod_u32(arg_2.c.x, select(4294967295u, 0u, var_1.a.b.x)), _wgslsmith_div_u32(countOneBits(0u), abs(1u))), arg_2.c.zyz));
    var var_4 = ~vec3<u32>(var_3.b.x, countOneBits(_wgslsmith_div_u32(~1u, ~13376u)), ~(~arg_2.c.x ^ ~0u));
    return vec3<bool>(false, any(vec3<bool>(any(!var_3.a), (false | var_3.a.x) || !var_1.a.b.x, select(false && var_2.a.b.x, any(vec3<bool>(false, true, true)), !var_2.a.b.x))), ~_wgslsmith_dot_vec4_u32(var_1.b.c, vec4<u32>(var_2.b.c.x, var_2.a.a.x, 39331u, var_2.a.c) | vec4<u32>(56799u, 23160u, var_2.a.c, 17554u)) != func_3(var_2.b.b, ~(~vec3<u32>(1u, var_1.a.c, 23735u))).x);
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<bool>) -> vec3<bool> {
    global0 = ~(~(i32(-1i) * -1i));
    return select(select(vec3<bool>(true, all(vec3<bool>(true, arg_1.x, true)), firstLeadingBit(u_input.c.x) >= select(25180u, u_input.c.x, arg_1.x)), vec3<bool>(arg_1.x, arg_1.x, false), false), !select(!vec3<bool>(true, arg_1.x, arg_1.x), !func_2(vec2<f32>(568f, -1000f), Struct_2(-375f, vec2<f32>(-1793f, -1327f)), Struct_3(vec2<i32>(0i, arg_0.x), Struct_2(-180f, vec2<f32>(-927f, -767f)), vec4<u32>(26362u, u_input.c.x, u_input.a.x, 70155u), -35636i)), any(select(vec4<bool>(true, arg_1.x, true, arg_1.x), vec4<bool>(true, false, true, false), vec4<bool>(arg_1.x, false, true, arg_1.x)))), (u_input.b.x & firstLeadingBit(u_input.b.x ^ u_input.b.x)) <= u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 30023i;
    var var_0 = select(!vec3<bool>(true, any(vec3<bool>(true, true, false)), true), select(select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), true), func_1(vec3<i32>(1i, -67508i, u_input.b.x) << (_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, 2654u, u_input.a.x), vec3<u32>(1u, u_input.a.x, u_input.c.x)) % vec3<u32>(32u)), select(vec2<bool>(true, true), vec2<bool>(true, true), true)), any(vec3<bool>(true, true, false))), !vec3<bool>(all(vec3<bool>(false, true, false)) != all(vec3<bool>(true, false, false)), all(vec4<bool>(true, true, true, true)), true));
    let var_1 = Struct_5(select(select(select(vec4<bool>(false, false, false, var_0.x), !vec4<bool>(true, var_0.x, true, true), select(vec4<bool>(var_0.x, true, true, true), vec4<bool>(var_0.x, var_0.x, var_0.x, false), false)), select(!vec4<bool>(var_0.x, false, var_0.x, var_0.x), !vec4<bool>(var_0.x, var_0.x, false, var_0.x), !vec4<bool>(var_0.x, var_0.x, var_0.x, true)), select(!vec4<bool>(false, false, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, true), func_2(vec2<f32>(1298f, 228f), Struct_2(-138f, vec2<f32>(719f, -2527f)), Struct_3(vec2<i32>(0i, 32276i), Struct_2(-771f, vec2<f32>(129f, 1510f)), vec4<u32>(u_input.a.x, u_input.a.x, 50305u, u_input.c.x), u_input.b.x)).x)), !vec4<bool>(false, var_0.x | var_0.x, false, all(vec3<bool>(var_0.x, false, var_0.x))), true), ~countOneBits(func_3(Struct_2(-2446f, vec2<f32>(-609f, 1069f)), vec3<u32>(4294967295u, u_input.c.x, 63276u))) | _wgslsmith_mod_vec3_u32(func_3(Struct_2(-938f, vec2<f32>(623f, 209f)), vec3<u32>(17669u, u_input.c.x, u_input.c.x)) | firstLeadingBit(u_input.c), ~vec3<u32>(13692u, 0u, 4294967295u) ^ vec3<u32>(u_input.a.x, 22865u, 1u)));
    var var_2 = 192f;
    var var_3 = var_1;
    var_2 = _wgslsmith_f_op_f32(-623f - _wgslsmith_f_op_f32(select(-1137f, -3109f, all(var_3.a.wz))));
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-950f)) - -1329f) * -1836f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_4, 395f))), vec2<u32>(var_3.b.x, 5975u), vec2<i32>(firstLeadingBit(u_input.b.x), _wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, u_input.b.x)), var_4, ~u_input.c.x);
}

