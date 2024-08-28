struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: bool,
    b: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<f32>,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 24> = array<vec4<u32>, 24>(vec4<u32>(0u, 24554u, 0u, 38595u), vec4<u32>(1u, 50436u, 1u, 4294967295u), vec4<u32>(1u, 587u, 54131u, 0u), vec4<u32>(54144u, 1u, 1u, 4294967295u), vec4<u32>(16167u, 52066u, 25u, 47015u), vec4<u32>(4294967295u, 36230u, 17890u, 4294967295u), vec4<u32>(4294967295u, 0u, 1u, 3209u), vec4<u32>(36275u, 1u, 28452u, 35867u), vec4<u32>(0u, 25975u, 53096u, 2560u), vec4<u32>(31143u, 20478u, 4294967295u, 12136u), vec4<u32>(0u, 4294967295u, 92350u, 110293u), vec4<u32>(43402u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(57863u, 9214u, 4294967295u, 0u), vec4<u32>(0u, 0u, 0u, 9369u), vec4<u32>(99274u, 1684u, 0u, 33429u), vec4<u32>(22379u, 0u, 61628u, 0u), vec4<u32>(4294967295u, 79068u, 1u, 23759u), vec4<u32>(17378u, 91215u, 1u, 0u), vec4<u32>(12727u, 86407u, 1u, 19536u), vec4<u32>(12786u, 4294967295u, 4294967295u, 52252u), vec4<u32>(0u, 7392u, 1u, 47387u), vec4<u32>(189u, 14901u, 35301u, 300u), vec4<u32>(14989u, 7192u, 42911u, 47222u), vec4<u32>(4294967295u, 31139u, 23975u, 17149u));

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: vec3<bool>, arg_3: Struct_4) -> bool {
    global0 = array<vec4<u32>, 24>();
    return arg_3.c.a;
}

fn func_3(arg_0: vec2<u32>) -> u32 {
    var var_0 = Struct_1(!all(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), select(false, false, false))));
    let var_1 = Struct_4(Struct_3(Struct_1(false), Struct_2(!func_1(Struct_1(true), true, vec3<bool>(var_0.a, var_0.a, var_0.a), Struct_4(Struct_3(Struct_1(true), Struct_2(var_0.a, vec4<u32>(arg_0.x, arg_0.x, arg_0.x, 20995u)), Struct_1(true)), vec4<f32>(104f, 1007f, -1000f, -1289f), Struct_1(var_0.a), -957f)), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, arg_0.x, 4294967295u, arg_0.x), ~vec4<u32>(0u, 4294967295u, arg_0.x, arg_0.x))), Struct_1(false)), _wgslsmith_div_vec4_f32(vec4<f32>(-152f, _wgslsmith_f_op_f32(-554f * -665f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-512f - 1323f)), 361f), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1f, 1f, 1f, 1f)))), Struct_1(var_0.a), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1000f + -1386f), _wgslsmith_f_op_f32(1176f * 821f))))));
    global0 = array<vec4<u32>, 24>();
    global0 = array<vec4<u32>, 24>();
    return ~abs(41371u);
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: vec3<bool>) -> Struct_4 {
    var var_0 = u_input.a.xwx | u_input.a.xyw;
    var_0 = countOneBits(countOneBits(vec3<i32>(_wgslsmith_sub_i32(-17705i, u_input.a.x), ~u_input.a.x, ~var_0.x))) >> (~(~vec3<u32>(func_3(vec2<u32>(arg_0, arg_0)), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, 15524u, 26418u), vec3<u32>(9867u, 9984u, arg_0)), 1u)) % vec3<u32>(32u));
    global0 = array<vec4<u32>, 24>();
    var var_1 = arg_1;
    var var_2 = _wgslsmith_div_vec3_f32(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1049f, 489f, -1982f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(677f, 171f, -159f) + vec3<f32>(260f, -335f, -892f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(912f, -521f, -705f), vec3<f32>(-533f, 293f, 1070f), vec3<bool>(arg_2.x, true, arg_1.a))) - vec3<f32>(203f, -274f, 112f)), arg_3))));
    return Struct_4(Struct_3(Struct_1(arg_2.x), Struct_2(true, global0[_wgslsmith_index_u32(2267u, 24u)]), arg_1), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(720f))), _wgslsmith_f_op_f32(sign(-1552f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(var_2.x)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1381f * var_2.x) + -1223f), -1775f), _wgslsmith_f_op_f32(f32(-1f) * -454f)), Struct_1(all(arg_2)), var_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(909f, _wgslsmith_f_op_f32(trunc(-1000f)), 312f, 180f);
    let var_1 = func_2(_wgslsmith_clamp_u32(4294967295u, ~1u, 1u), Struct_1(true), !(!vec4<bool>(func_1(Struct_1(true), true, vec3<bool>(true, true, true), Struct_4(Struct_3(Struct_1(true), Struct_2(true, global0[_wgslsmith_index_u32(20650u, 24u)]), Struct_1(true)), vec4<f32>(-808f, var_0.x, var_0.x, 723f), Struct_1(false), var_0.x)), true, any(vec2<bool>(false, false)), true)), !vec3<bool>(true, true, var_0.x >= _wgslsmith_f_op_f32(-var_0.x)));
    let var_2 = var_1.a.b.b;
    var var_3 = select(select(select(select(vec4<bool>(var_1.a.c.a, true, var_1.c.a, var_1.c.a), !vec4<bool>(false, false, false, var_1.c.a), vec4<bool>(false, false, false, var_1.a.b.a)), !select(vec4<bool>(var_1.a.b.a, var_1.c.a, var_1.c.a, var_1.a.c.a), vec4<bool>(var_1.c.a, var_1.c.a, var_1.a.b.a, true), vec4<bool>(var_1.a.a.a, var_1.c.a, false, var_1.a.c.a)), true), select(!(!vec4<bool>(true, var_1.c.a, false, false)), vec4<bool>(var_1.b.x <= -1382f, u_input.a.x != u_input.a.x, 729f > var_0.x, false), any(vec4<bool>(true, true, var_1.a.c.a, var_1.a.a.a)) && all(vec2<bool>(true, var_1.c.a))), true), !(!vec4<bool>(true, var_1.c.a, true, true)), !(!any(vec4<bool>(false, var_1.a.c.a, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.a.wz, -u_input.a.zy);
}

