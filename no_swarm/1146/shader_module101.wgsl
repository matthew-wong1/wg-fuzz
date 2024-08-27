struct Struct_1 {
    a: vec3<u32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: f32,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: vec4<f32>,
    b: u32,
}

struct Struct_5 {
    a: Struct_3,
    b: vec3<bool>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 10>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_5) -> vec3<u32> {
    let var_0 = 569f;
    let var_1 = arg_0;
    global0 = array<vec3<f32>, 10>();
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.a.b, arg_0.a.b, var_1.a.d.a.b, 740f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(545f, -652f, -657f, arg_0.a.c), vec4<f32>(-1093f, -748f, arg_0.a.e.a.b, -741f))))));
    global0 = array<vec3<f32>, 10>();
    return var_1.a.d.a.a;
}

fn func_2(arg_0: bool) -> vec3<u32> {
    var var_0 = vec3<bool>(arg_0, true, true);
    var var_1 = _wgslsmith_add_i32(abs(u_input.c), u_input.c);
    var_0 = vec3<bool>(!var_0.x && true, any(vec2<bool>(!any(vec3<bool>(true, arg_0, true)), all(select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, true, false), true)))), !arg_0);
    let var_2 = _wgslsmith_clamp_u32(_wgslsmith_mult_u32(u_input.d.x, firstTrailingBit(u_input.d.x) << (_wgslsmith_sub_u32(u_input.d.x, u_input.d.x) % 32u)), u_input.d.x, ~_wgslsmith_div_u32(~u_input.b.x, ~1u)) < 7741u;
    global0 = array<vec3<f32>, 10>();
    return _wgslsmith_mod_vec3_u32(min(vec3<u32>(~max(1u, u_input.a), u_input.b.x, 4294967295u), _wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.d.x, u_input.b.x, 0u), vec3<u32>(u_input.d.x, ~28801u, ~23285u), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.d.x, 1u, 1u) ^ vec3<u32>(4294967295u, 1u, 1u), ~vec3<u32>(u_input.a, u_input.d.x, 71422u)))), reverseBits(func_3(Struct_5(Struct_3(var_0.x, -546f, 723f, Struct_2(Struct_1(vec3<u32>(57715u, u_input.b.x, u_input.b.x), 823f)), Struct_2(Struct_1(vec3<u32>(u_input.d.x, u_input.d.x, 0u), 1144f))), vec3<bool>(var_2, true, true), vec4<bool>(true, var_0.x, arg_0, arg_0))) | _wgslsmith_mod_vec3_u32(vec3<u32>(1u, 1u, 1u), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.d.x), vec3<u32>(13263u, u_input.d.x, 40651u)))));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_4, arg_2: vec3<bool>) -> vec3<bool> {
    var var_0 = true;
    global0 = array<vec3<f32>, 10>();
    let var_1 = firstLeadingBit(arg_0.yx);
    let var_2 = Struct_2(Struct_1(_wgslsmith_div_vec3_u32(func_2(u_input.c > 0i), firstTrailingBit(vec3<u32>(81772u, 12636u, u_input.d.x) << (vec3<u32>(0u, 1u, u_input.a) % vec3<u32>(32u)))), _wgslsmith_f_op_f32(-arg_1.a.x)));
    return arg_2;
}

fn func_4(arg_0: Struct_5) -> f32 {
    return 1f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(func_4(Struct_5(Struct_3(true, -1874f, _wgslsmith_f_op_f32(f32(-1f) * -1718f), Struct_2(Struct_1(vec3<u32>(4294967295u, 21380u, u_input.a), 1241f)), Struct_2(Struct_1(vec3<u32>(4294967295u, u_input.d.x, 28742u), 1916f))), select(vec3<bool>(true, false, false), func_1(vec4<i32>(-2147483647i, -3597i, 31144i, u_input.c), Struct_4(vec4<f32>(425f, -600f, 330f, -380f), 84831u), vec3<bool>(false, true, false)), true), vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * -818f))));
    var_0 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(select(var_0.x, -925f, false)), !any(vec4<bool>(true, false, false, true)))), -1041f)));
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - 330f))), var_0.x, _wgslsmith_f_op_f32(abs(var_0.x))) - global0[_wgslsmith_index_u32(func_3(Struct_5(Struct_3(all(vec2<bool>(false, false)), _wgslsmith_f_op_f32(-var_0.x), var_0.x, Struct_2(Struct_1(vec3<u32>(1u, 1u, 88249u), var_0.x)), Struct_2(Struct_1(vec3<u32>(u_input.b.x, 28655u, 5257u), var_0.x))), vec3<bool>(true, true, true), select(vec4<bool>(false, false, true, false), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), false), vec4<bool>(true, false, true, true)))).x, 10u)]);
    var var_2 = any(select(func_1(~vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c), Struct_4(vec4<f32>(var_1.x, 2370f, var_1.x, 124f), 4294967295u), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), false)).xz, func_1(-vec4<i32>(1i, u_input.c, 2147483647i, u_input.c), Struct_4(vec4<f32>(var_0.x, var_0.x, 771f, var_1.x), u_input.a), vec3<bool>(false, true, false)).yx, all(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false))))) | any(vec2<bool>(true, true));
    var var_3 = vec4<bool>(all(!vec3<bool>(-134f > var_1.x, true, all(vec2<bool>(true, false)))), all(vec4<bool>(all(vec4<bool>(true, true, true, true)), false, false, select(select(false, true, true), true, true))), !all(!select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true))), (_wgslsmith_mult_u32(~u_input.b.x, _wgslsmith_mult_u32(0u, 5820u)) <= ~(~u_input.d.x)) && false);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d & abs(~vec2<u32>(u_input.a, 26365u)), u_input.c);
}

