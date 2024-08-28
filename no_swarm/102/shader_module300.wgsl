struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_2,
    d: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 6>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: i32, arg_1: vec3<i32>, arg_2: u32, arg_3: Struct_1) -> f32 {
    global0 = array<vec2<i32>, 6>();
    var var_0 = arg_3.c;
    var_0 = !arg_3.c;
    let var_1 = !arg_3.c;
    global0 = array<vec2<i32>, 6>();
    return 221f;
}

fn func_2() -> i32 {
    var var_0 = 89092u;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-973f, _wgslsmith_f_op_f32(197f + -722f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(u_input.a.x & -11256i, vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), u_input.b, Struct_1(vec3<i32>(0i, -23624i, u_input.a.x), false, vec2<bool>(false, true)))))));
    var_0 = _wgslsmith_clamp_u32(1u, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32((vec3<u32>(23858u, u_input.b, u_input.b) ^ vec3<u32>(u_input.b, u_input.b, 26307u)) & ~vec3<u32>(u_input.b, 1u, 32495u), firstTrailingBit(vec3<u32>(53698u, 1u, 0u) << (vec3<u32>(u_input.b, 1u, u_input.b) % vec3<u32>(32u)))), 0u), u_input.b);
    global0 = array<vec2<i32>, 6>();
    let var_2 = true;
    return min(-42371i, _wgslsmith_dot_vec2_i32(u_input.a.zx, ~firstLeadingBit(vec2<i32>(u_input.a.x, u_input.a.x))));
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: i32) -> Struct_2 {
    global0 = array<vec2<i32>, 6>();
    global0 = array<vec2<i32>, 6>();
    var var_0 = true;
    global0 = array<vec2<i32>, 6>();
    var var_1 = Struct_1(~vec3<i32>(countOneBits(~(-20073i)), arg_2, -1i), (u_input.a.x & _wgslsmith_mult_i32(u_input.a.x, 26873i & arg_2)) <= abs(func_2()), vec2<bool>(!(!all(vec3<bool>(arg_0, arg_0, arg_0))), arg_0 && (arg_0 | false)));
    return Struct_2(-arg_2, u_input.a.x);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: bool, arg_3: vec2<f32>) -> StorageBuffer {
    let var_0 = !vec4<bool>(select(arg_1.c.x, all(select(vec4<bool>(arg_1.b, arg_1.b, arg_1.b, false), vec4<bool>(false, arg_0.a.c.x, false, arg_0.a.b), true)), arg_0.d >= 8825u), !all(vec2<bool>(arg_2, arg_2)), false, true);
    global0 = array<vec2<i32>, 6>();
    let var_1 = arg_0.a.a;
    let var_2 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(375f, -1259f, arg_3.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-112f, arg_3.x, 410f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-541f, arg_0.b, _wgslsmith_f_op_f32(-355f * -925f)) * vec3<f32>(_wgslsmith_f_op_f32(446f - arg_3.x), _wgslsmith_f_op_f32(-1218f * arg_0.b), _wgslsmith_div_f32(arg_3.x, 1109f))))));
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(sign(var_2.x)), _wgslsmith_f_op_f32(-174f - -1171f), -718f), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(var_2, var_2)), _wgslsmith_f_op_vec3_f32(-var_2))), select(var_0.zww, select(var_0.yzw, vec3<bool>(false, false, false), var_0.x), arg_1.c.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-296f, -110f, 210f) * vec3<f32>(935f, -1000f, arg_3.x)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(941f, -145f, 886f) * _wgslsmith_f_op_vec3_f32(max(var_2, vec3<f32>(-346f, 744f, arg_3.x))))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_2)));
    return StorageBuffer(vec4<i32>(i32(-1i) * -2147483647i, -var_1.x, arg_0.c.b, -u_input.a.x), ~select(firstTrailingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(0i, arg_0.a.a.x, arg_0.c.a, arg_0.a.a.x), vec4<i32>(var_1.x, u_input.a.x, 0i, 2994i))), -abs(vec4<i32>(2147483647i, -2147483647i, -1i, -2147483647i)), select(var_0, vec4<bool>(arg_1.c.x, arg_2, false, true), !vec4<bool>(arg_2, var_0.x, true, true))), arg_1.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(Struct_1(countOneBits(_wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, -25732i), vec3<i32>(-2147483647i, 0i, 49906i)), u_input.a)), true, select(vec2<bool>(u_input.a.x != u_input.a.x, true), vec2<bool>(true, all(vec4<bool>(false, false, false, true))), true)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-568f, _wgslsmith_div_f32(598f, -1256f)) + 172f), Struct_2(~u_input.a.x, -(0i | _wgslsmith_mult_i32(0i, u_input.a.x))), ~66310u);
    global0 = array<vec2<i32>, 6>();
    global0 = array<vec2<i32>, 6>();
    global0 = array<vec2<i32>, 6>();
    var var_1 = u_input.a.x;
    var_1 = -6848i;
    let x = u_input.a;
    s_output = func_4(Struct_3(Struct_1(u_input.a, _wgslsmith_f_op_f32(min(var_0.b, -1517f)) < _wgslsmith_div_f32(var_0.b, var_0.b), vec2<bool>(all(vec2<bool>(false, false)), !var_0.a.b)), _wgslsmith_f_op_f32(117f + var_0.b), func_1(all(var_0.a.c), 4294967295u, 25609i), var_0.d), Struct_1(vec3<i32>(_wgslsmith_clamp_i32(-50903i, -1i, var_0.a.a.x), var_0.a.a.x, ~(-1i)) & _wgslsmith_div_vec3_i32(-var_0.a.a, -vec3<i32>(36800i, var_0.a.a.x, 0i)), var_0.a.b, !select(select(var_0.a.c, var_0.a.c, vec2<bool>(var_0.a.b, var_0.a.b)), !var_0.a.c, any(vec3<bool>(var_0.a.c.x, var_0.a.b, false)))), var_0.a.c.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, 538f)))) + vec2<f32>(_wgslsmith_f_op_f32(sign(-361f)), var_0.b)));
}

