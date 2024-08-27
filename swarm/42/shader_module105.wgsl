struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec2<u32>,
    b: i32,
    c: f32,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 8> = array<vec3<f32>, 8>(vec3<f32>(-1574f, -1762f, -1349f), vec3<f32>(-569f, -1649f, 1070f), vec3<f32>(1553f, -1306f, -1502f), vec3<f32>(-698f, 882f, -690f), vec3<f32>(266f, -981f, -1017f), vec3<f32>(1640f, 452f, -211f), vec3<f32>(-311f, 1519f, -855f), vec3<f32>(-117f, -241f, -1874f));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1(arg_0: Struct_5) -> bool {
    var var_0 = arg_0.a;
    let var_1 = _wgslsmith_mod_vec4_u32(vec4<u32>(min(arg_0.b, abs(~4294967295u)), select(4294967295u, 86949u, true) >> (_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, 1u, u_input.d), vec3<u32>(arg_0.b, 56695u, arg_0.a.a)), _wgslsmith_mod_u32(u_input.d, u_input.b.x)) % 32u), arg_0.a.a, ~0u), ~vec4<u32>(~arg_0.a.a, _wgslsmith_mult_u32(~1u, ~arg_0.b), u_input.b.x, 0u));
    global0 = array<vec3<f32>, 8>();
    global0 = array<vec3<f32>, 8>();
    let var_2 = firstTrailingBit(vec2<u32>(~reverseBits(var_1.x), ~2967u));
    return false;
}

fn func_2(arg_0: vec4<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * -760f)), -251f, -682f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1368f, -889f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1045f, 489f, 1608f, 957f))), select(vec4<bool>(any(arg_0.yz), true, all(vec2<bool>(arg_0.x, true)), true), select(select(vec4<bool>(true, arg_0.x, false, arg_0.x), arg_0, true), select(vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x), arg_0, vec4<bool>(false, false, arg_0.x, true)), false), all(vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x)))))));
    return Struct_1(~0u);
}

fn func_3(arg_0: Struct_5, arg_1: vec2<bool>, arg_2: Struct_3) -> f32 {
    var var_0 = u_input.b.x == arg_2.e.a;
    let var_1 = arg_1;
    var_0 = func_1(arg_0);
    var var_2 = firstTrailingBit(0u);
    var var_3 = _wgslsmith_mod_u32(~_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(1u, arg_2.a.x, 4294967295u, 0u), firstLeadingBit(vec4<u32>(arg_0.b, 1u, 4294967295u, u_input.b.x))), ~vec4<u32>(668u, 33580u, 1u, 0u) ^ vec4<u32>(0u, 0u, u_input.b.x, 27910u)), 2414u);
    return -1000f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<f32>, 8>();
    var var_0 = !(!(!(!func_1(Struct_5(Struct_1(38849u), u_input.d)))));
    let var_1 = Struct_4(Struct_3(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b.x, ~u_input.b.x), vec2<u32>(18969u, 4294967295u)), u_input.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -353f))) - _wgslsmith_f_op_f32(abs(473f))), Struct_2(true), func_2(!select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), false))));
    var_0 = true;
    var_0 = !var_1.a.d.a || true;
    var var_2 = (vec3<u32>(_wgslsmith_add_u32(var_1.a.e.a, _wgslsmith_mod_u32(0u, u_input.b.x)), min(var_1.a.a.x, 24390u) << (var_1.a.a.x % 32u), _wgslsmith_sub_u32(_wgslsmith_div_u32(var_1.a.e.a, 106559u), ~13246u)) & u_input.b) >> ((u_input.b << (~vec3<u32>(u_input.b.x, ~4294967295u, ~4294967295u) % vec3<u32>(32u))) % vec3<u32>(32u));
    var var_3 = _wgslsmith_mod_i32(1983i, _wgslsmith_add_i32(var_1.a.b, u_input.a));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.a.c)) * _wgslsmith_f_op_f32(func_3(Struct_5(var_1.a.e, abs(0u)), !vec2<bool>(var_1.a.d.a, var_1.a.d.a), var_1.a))) != _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1531f, 1000f, func_1(Struct_5(var_1.a.e, var_1.a.e.a)))), 743f) - 299f);
    var var_4 = ~_wgslsmith_dot_vec2_u32(min(~_wgslsmith_clamp_vec2_u32(u_input.b.yx, u_input.b.zx, vec2<u32>(u_input.d, var_2.x)), vec2<u32>(u_input.b.x & 4294967295u, abs(1u))), _wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(var_1.a.a.x, 13916u), ~vec2<u32>(u_input.b.x, var_2.x)), _wgslsmith_sub_vec2_u32(var_1.a.a, u_input.b.zy) >> (vec2<u32>(50581u, 6178u) % vec2<u32>(32u)), u_input.b.yx));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.a.c + var_1.a.c))), _wgslsmith_f_op_f32(select(327f, _wgslsmith_f_op_f32(var_1.a.c * var_1.a.c), !var_1.a.d.a))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1021f, 832f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.c - 205f) * _wgslsmith_f_op_f32(f32(-1f) * -199f)))), _wgslsmith_f_op_f32(func_3(Struct_5(Struct_1(1u), firstTrailingBit(4294967295u)), select(select(vec2<bool>(false, true), vec2<bool>(var_1.a.d.a, var_1.a.d.a), vec2<bool>(var_1.a.d.a, var_1.a.d.a)), !vec2<bool>(true, var_1.a.d.a), !var_1.a.d.a), Struct_3(~vec2<u32>(1u, var_1.a.a.x), -u_input.c.x, 405f, Struct_2(var_1.a.d.a), Struct_1(13932u))))));
}

