struct Struct_1 {
    a: f32,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>) -> vec4<bool> {
    global0 = _wgslsmith_dot_vec2_i32(vec2<i32>(-_wgslsmith_sub_i32(-1i, reverseBits(-65071i)), -1i), ~vec2<i32>(_wgslsmith_div_i32(firstLeadingBit(5317i), -1578i), 1i));
    let var_0 = Struct_1(arg_0.a, !arg_0.b, _wgslsmith_add_i32(arg_0.c, firstTrailingBit(_wgslsmith_clamp_i32(59667i, arg_0.c, arg_0.c))) >> (arg_1.x % 32u));
    global0 = var_0.c;
    global0 = var_0.c;
    return vec4<bool>(true, arg_0.b, arg_0.b, arg_0.b);
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: vec3<i32>) -> Struct_2 {
    global0 = -14517i;
    var var_0 = Struct_1(813f, false, -6505i);
    let var_1 = vec2<f32>(-568f, -1000f);
    var var_2 = !(!select(func_3(Struct_1(-727f, var_0.b, -28748i), u_input.c.zx), select(select(vec4<bool>(false, arg_1.b, false, var_0.b), vec4<bool>(false, var_0.b, true, arg_1.b), var_0.b), !vec4<bool>(var_0.b, arg_1.b, var_0.b, false), true), func_3(Struct_1(arg_0, false, -36795i), ~u_input.a)));
    var_2 = !vec4<bool>(!var_2.x, var_0.b, var_2.x, select(any(var_2.yx), true, !var_0.b & false));
    return Struct_2(-282f, arg_1, Struct_1(-532f, arg_1.b, _wgslsmith_mod_i32(firstTrailingBit(-14894i), -12630i)));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec3<f32>, arg_2: Struct_2, arg_3: vec4<u32>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(trunc(630f));
    global0 = 26111i;
    var var_1 = -1176f;
    var_1 = arg_2.a;
    var var_2 = all(!(!(!vec2<bool>(arg_2.b.b, arg_2.c.b)))) || ((u_input.b.x < ((2147483647i ^ arg_0.x) | u_input.d.x)) & !(!arg_2.b.b));
    return 4294967295u;
}

fn func_1() -> bool {
    global0 = u_input.b.x;
    var var_0 = ~(abs(4294967295u) & func_4(vec3<i32>(-58552i, u_input.d.x, u_input.d.x) << (vec3<u32>(16154u, 0u, 4294967295u) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-761f, -1388f, 1679f)), func_2(-343f, Struct_1(-142f, true, u_input.b.x), u_input.b.ywy), vec4<u32>(u_input.a.x, 0u, u_input.c.x, u_input.a.x))) > u_input.c.x;
    var var_1 = func_2(683f, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1208f))) - _wgslsmith_div_f32(-1916f, _wgslsmith_f_op_f32(select(473f, 1895f, true)))), all(vec2<bool>(true, true)), u_input.b.x), firstTrailingBit(-(u_input.b.zwy & vec3<i32>(u_input.b.x, u_input.d.x, u_input.b.x)) >> (u_input.c.zxy % vec3<u32>(32u))));
    let var_2 = _wgslsmith_clamp_u32(max(115723u, firstTrailingBit(_wgslsmith_dot_vec4_u32(u_input.c, u_input.c) << (u_input.a.x % 32u))), u_input.c.x, _wgslsmith_add_u32(4294967295u, 0u));
    var var_3 = Struct_2(var_1.a, Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1353f - -277f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a * 464f) - _wgslsmith_f_op_f32(max(var_1.b.a, var_1.c.a))))), ~firstLeadingBit(var_1.c.c) <= 1i, _wgslsmith_div_i32(abs(var_1.c.c), u_input.b.x)), func_2(var_1.c.a, var_1.b, vec3<i32>(u_input.d.x, abs(var_1.b.c), 0i)).b);
    return any(!(!select(vec3<bool>(var_3.b.b, var_3.c.b, var_1.b.b), select(vec3<bool>(false, var_3.c.b, var_3.b.b), vec3<bool>(var_3.c.b, var_1.b.b, true), false), func_3(Struct_1(var_3.b.a, false, var_1.c.c), u_input.c.wy).x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~u_input.d.x;
    let var_0 = select(~u_input.c.x, 0u, func_1());
    let var_1 = u_input.b.xyw;
    global0 = _wgslsmith_add_i32(_wgslsmith_div_i32(-68511i, ~(-2147483647i)), abs(~(~(i32(-1i) * -1i))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(670f * 1821f))));
    let var_3 = func_2(-266f, func_2(_wgslsmith_f_op_f32(-275f - func_2(_wgslsmith_f_op_f32(-827f + -1203f), func_2(904f, Struct_1(486f, false, -16106i), u_input.b.www).c, vec3<i32>(-1i, var_1.x, -4762i)).b.a), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(140f - 1103f)), ~var_0 <= _wgslsmith_sub_u32(u_input.c.x, u_input.a.x), -12570i), var_1).b, var_1);
    let var_4 = select(u_input.b.zw ^ -_wgslsmith_sub_vec2_i32(u_input.b.yw, max(vec2<i32>(0i, 9097i), vec2<i32>(u_input.d.x, var_1.x))), var_1.zy, vec2<bool>(any(vec2<bool>(true, true)) == !var_3.b.b, !func_2(2614f, Struct_1(var_3.b.a, var_3.c.b, u_input.d.x), _wgslsmith_mod_vec3_i32(var_1, var_1)).b.b));
    let x = u_input.a;
    s_output = StorageBuffer(-507f, ~(~96927i) & _wgslsmith_mod_i32(-max(u_input.d.x, -1i), i32(-1i) * -2924i), var_3.a, var_3.a);
}

