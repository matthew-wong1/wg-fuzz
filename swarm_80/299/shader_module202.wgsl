struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: u32,
    c: vec4<u32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
    c: u32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 14> = array<Struct_4, 14>(Struct_4(-2056f, Struct_3(32670i, Struct_1(-333f), Struct_2(vec4<f32>(-923f, 807f, 823f, -177f), 1u, vec4<u32>(98997u, 14366u, 10547u, 63785u)))), Struct_4(-818f, Struct_3(45321i, Struct_1(527f), Struct_2(vec4<f32>(2595f, -1075f, -921f, -2429f), 25102u, vec4<u32>(29577u, 0u, 0u, 61700u)))), Struct_4(250f, Struct_3(0i, Struct_1(-822f), Struct_2(vec4<f32>(-1000f, -643f, 486f, -590f), 0u, vec4<u32>(1u, 4294967295u, 79421u, 19713u)))), Struct_4(-262f, Struct_3(0i, Struct_1(1185f), Struct_2(vec4<f32>(782f, 872f, 888f, -409f), 1u, vec4<u32>(34536u, 4294967295u, 0u, 19821u)))), Struct_4(-756f, Struct_3(0i, Struct_1(473f), Struct_2(vec4<f32>(-1369f, -945f, 1429f, 469f), 1u, vec4<u32>(4294967295u, 0u, 4294967295u, 15922u)))), Struct_4(501f, Struct_3(-1i, Struct_1(-374f), Struct_2(vec4<f32>(1000f, 595f, 128f, -1000f), 13962u, vec4<u32>(1u, 42533u, 78429u, 50949u)))), Struct_4(-1741f, Struct_3(0i, Struct_1(-758f), Struct_2(vec4<f32>(261f, 158f, 102f, 143f), 1u, vec4<u32>(7139u, 0u, 4294967295u, 32393u)))), Struct_4(576f, Struct_3(-744i, Struct_1(389f), Struct_2(vec4<f32>(-737f, -929f, 997f, 646f), 1959u, vec4<u32>(34874u, 1u, 40884u, 40763u)))), Struct_4(-790f, Struct_3(24904i, Struct_1(206f), Struct_2(vec4<f32>(-1639f, 251f, 1510f, -797f), 65388u, vec4<u32>(0u, 14956u, 30153u, 0u)))), Struct_4(-130f, Struct_3(1i, Struct_1(-405f), Struct_2(vec4<f32>(-612f, 845f, 174f, 1246f), 27768u, vec4<u32>(73211u, 4294967295u, 1u, 55675u)))), Struct_4(484f, Struct_3(-6465i, Struct_1(-462f), Struct_2(vec4<f32>(1000f, 525f, 233f, -306f), 1u, vec4<u32>(28045u, 1u, 1u, 93151u)))), Struct_4(670f, Struct_3(0i, Struct_1(860f), Struct_2(vec4<f32>(285f, 947f, 960f, -223f), 4294967295u, vec4<u32>(15512u, 0u, 1u, 4758u)))), Struct_4(1149f, Struct_3(-18697i, Struct_1(-1000f), Struct_2(vec4<f32>(-661f, 150f, 1388f, -229f), 41582u, vec4<u32>(1u, 0u, 4294967295u, 4294967295u)))), Struct_4(805f, Struct_3(-43005i, Struct_1(-1000f), Struct_2(vec4<f32>(-1044f, -769f, -341f, -1710f), 118311u, vec4<u32>(0u, 14417u, 23672u, 4356u)))));

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_4) -> f32 {
    global0 = array<Struct_4, 14>();
    let var_0 = arg_2.b;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a) + _wgslsmith_f_op_f32(f32(-1f) * -218f)));
    global0 = array<Struct_4, 14>();
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-arg_2.a));
    return _wgslsmith_f_op_f32(-var_1);
}

fn func_2(arg_0: vec3<bool>, arg_1: vec2<i32>, arg_2: vec2<i32>, arg_3: Struct_4) -> Struct_2 {
    global0 = array<Struct_4, 14>();
    var var_0 = !(!select(select(select(vec2<bool>(arg_0.x, arg_0.x), arg_0.xy, vec2<bool>(false, true)), select(vec2<bool>(false, false), vec2<bool>(arg_0.x, arg_0.x), vec2<bool>(arg_0.x, arg_0.x)), select(true, arg_0.x, arg_0.x)), !(!arg_0.zz), arg_0.xz));
    let var_1 = Struct_2(arg_3.b.c.a, firstTrailingBit(min(select(arg_3.b.c.b, _wgslsmith_div_u32(1u, arg_3.b.c.b), !arg_0.x), _wgslsmith_dot_vec3_u32(arg_3.b.c.c.yzw, vec3<u32>(arg_3.b.c.c.x, 1u, 27143u)))), ~_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(arg_3.b.c.c, arg_3.b.c.c & arg_3.b.c.c), arg_3.b.c.c));
    let var_2 = Struct_3((i32(-1i) * -u_input.a.x) & ~(~arg_2.x), Struct_1(var_1.a.x), Struct_2(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(max(arg_3.b.c.a.x, arg_3.b.b.a)), _wgslsmith_f_op_f32(-var_1.a.x), var_1.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1531f)))), var_1.b, arg_3.b.c.c));
    var_0 = !arg_0.zz;
    return Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(169f * arg_3.b.c.a.x) + -612f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.b.b.a + -1427f) + _wgslsmith_f_op_f32(-var_2.b.a)), -1649f, _wgslsmith_f_op_f32(func_3(var_1.c.x, arg_3.b.b, Struct_4(-221f, Struct_3(0i, Struct_1(1319f), var_1)))))), min(~26342u, 24595u & ~(~arg_3.b.c.c.x)), vec4<u32>(~var_1.b, arg_3.b.c.c.x, ~_wgslsmith_sub_u32(~88456u, 52871u), 51114u));
}

fn func_1(arg_0: Struct_1) -> Struct_2 {
    return func_2(vec3<bool>(true, true, _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 4294967295u, 1u, 22065u), vec4<u32>(53311u, 96424u, 1u, 4294967295u)) > 699u), ~u_input.a, _wgslsmith_sub_vec2_i32(~vec2<i32>(_wgslsmith_mod_i32(u_input.b.x, 2147483647i), _wgslsmith_add_i32(36938i, -66355i)), (vec2<i32>(u_input.a.x, 1i) << (~vec2<u32>(4294967295u, 4294967295u) % vec2<u32>(32u))) ^ countOneBits(_wgslsmith_div_vec2_i32(u_input.b, u_input.a))), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, max(_wgslsmith_dot_vec2_u32(vec2<u32>(77521u, 4294967295u), vec2<u32>(24719u, 20073u)) ^ ~0u, 1u)), 14u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2066f - 1236f) - 1f) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1085f, 285f)))));
    global0 = array<Struct_4, 14>();
    var var_1 = Struct_3(-u_input.b.x, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x + var_0.a.x)) + _wgslsmith_f_op_f32(select(-157f, _wgslsmith_f_op_f32(var_0.a.x * 180f), true)))), Struct_2(var_0.a, ~1u, vec4<u32>(~min(var_0.c.x, var_0.b), ~1u, var_0.b, 72132u)));
    var_1 = Struct_3(_wgslsmith_clamp_i32(max(-14202i, i32(-1i) * -41130i), abs(u_input.c), var_1.a & ~_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.a, 31414i), u_input.b)), var_1.b, var_1.c);
    var var_2 = -1i;
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_clamp_vec4_u32(var_0.c & vec4<u32>(53035u, 4294967295u, var_1.c.b, var_0.b), vec4<u32>(0u, 1u, 56874u, var_0.b) & var_0.c, var_1.c.c)) | _wgslsmith_div_vec4_u32(~(var_0.c & vec4<u32>(var_1.c.b, 4294967295u, var_1.c.c.x, var_1.c.c.x)), var_1.c.c), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(var_0.a.x, var_1.b.a), var_0.a.x)) + var_0.a.wz), var_0.c.x, var_0.b, -2118f);
}

