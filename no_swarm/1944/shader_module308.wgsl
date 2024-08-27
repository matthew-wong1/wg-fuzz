struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
    c: f32,
    d: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: u32,
    c: vec2<i32>,
    d: bool,
    e: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
    b: u32,
    c: Struct_4,
    d: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 16>;

var<private> global1: array<Struct_3, 18> = array<Struct_3, 18>(Struct_3(vec3<i32>(33316i, 2147483647i, 2147483647i), Struct_2(Struct_1(i32(-2147483648))), 275f, Struct_1(i32(-2147483648))), Struct_3(vec3<i32>(-1i, -3100i, -24402i), Struct_2(Struct_1(i32(-2147483648))), -1000f, Struct_1(-40722i)), Struct_3(vec3<i32>(52856i, i32(-2147483648), 1422i), Struct_2(Struct_1(-25636i)), -342f, Struct_1(0i)), Struct_3(vec3<i32>(-19273i, i32(-2147483648), -23044i), Struct_2(Struct_1(i32(-2147483648))), -193f, Struct_1(32889i)), Struct_3(vec3<i32>(-1i, 1i, -59054i), Struct_2(Struct_1(0i)), 1533f, Struct_1(2147483647i)), Struct_3(vec3<i32>(2147483647i, i32(-2147483648), 43784i), Struct_2(Struct_1(1i)), -753f, Struct_1(-1i)), Struct_3(vec3<i32>(-1i, 1i, -11416i), Struct_2(Struct_1(49823i)), -1016f, Struct_1(0i)), Struct_3(vec3<i32>(-55599i, 40140i, 0i), Struct_2(Struct_1(i32(-2147483648))), -285f, Struct_1(-54220i)), Struct_3(vec3<i32>(-1i, -22759i, -1i), Struct_2(Struct_1(-36962i)), 388f, Struct_1(0i)), Struct_3(vec3<i32>(19783i, 16633i, 7866i), Struct_2(Struct_1(-1i)), -206f, Struct_1(-1i)), Struct_3(vec3<i32>(0i, 44454i, 17824i), Struct_2(Struct_1(38368i)), 2017f, Struct_1(32618i)), Struct_3(vec3<i32>(38783i, 7401i, 32931i), Struct_2(Struct_1(43029i)), -1714f, Struct_1(0i)), Struct_3(vec3<i32>(-1i, -1i, -20103i), Struct_2(Struct_1(23760i)), -1200f, Struct_1(-1i)), Struct_3(vec3<i32>(-23530i, -17071i, -1i), Struct_2(Struct_1(3197i)), 1000f, Struct_1(-1i)), Struct_3(vec3<i32>(0i, 19641i, 24010i), Struct_2(Struct_1(7673i)), 611f, Struct_1(-6203i)), Struct_3(vec3<i32>(18105i, 2147483647i, 1i), Struct_2(Struct_1(29504i)), -1318f, Struct_1(0i)), Struct_3(vec3<i32>(17937i, 38042i, -25225i), Struct_2(Struct_1(2147483647i)), -428f, Struct_1(26654i)), Struct_3(vec3<i32>(37990i, i32(-2147483648), 0i), Struct_2(Struct_1(83160i)), 1595f, Struct_1(-38729i)));

var<private> global2: bool;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
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

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec2<i32>) -> vec3<bool> {
    var var_0 = 4294967295u;
    let var_1 = 0u;
    var_0 = 17824u;
    var_0 = var_1;
    global0 = array<vec2<bool>, 16>();
    return select(!select(vec3<bool>(true, true, true), vec3<bool>(all(vec3<bool>(false, true, true)), true, any(vec3<bool>(false, true, false))), true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), true), all(vec4<bool>(false, false, false, false))), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), true), true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-175f * 464f), 1000f, false)) >= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-389f))))));
}

fn func_2(arg_0: vec3<bool>, arg_1: bool) -> bool {
    var var_0 = !select(!arg_0, select(select(select(arg_0, arg_0, arg_0), !vec3<bool>(false, true, arg_0.x), arg_0.x), !select(vec3<bool>(arg_0.x, false, true), arg_0, vec3<bool>(false, arg_0.x, false)), func_3(vec2<i32>(u_input.a.x, u_input.a.x))), !arg_1);
    global0 = array<vec2<bool>, 16>();
    let var_1 = all(!(!vec3<bool>(!arg_1, any(arg_0), true)));
    global1 = array<Struct_3, 18>();
    var var_2 = -2147483647i;
    return true;
}

fn func_1(arg_0: vec4<i32>, arg_1: vec2<f32>) -> f32 {
    global2 = !(func_2(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), false) || true);
    var var_0 = Struct_4(any(vec3<bool>(arg_0.x <= -3247i, -287f >= arg_1.x, true)) != false, ~_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)), ~(~11914u)), u_input.a.xz, (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1.x, 1528f))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_1.x)) + arg_1.x)) && (_wgslsmith_f_op_f32(-1287f - _wgslsmith_f_op_f32(arg_1.x * 1000f)) <= arg_1.x), Struct_1(u_input.a.x));
    var_0 = Struct_4(true, var_0.b, u_input.a.zz, all(!global0[_wgslsmith_index_u32(0u, 16u)]), Struct_1(1i ^ max(-1i, arg_0.x)));
    var var_1 = Struct_4(!(!(!select(true, true, var_0.d))), 5252u >> (_wgslsmith_dot_vec3_u32(~vec3<u32>(var_0.b, var_0.b, 4294967295u), ~vec3<u32>(4294967295u, 1u, var_0.b) >> (abs(vec3<u32>(var_0.b, var_0.b, var_0.b)) % vec3<u32>(32u))) % 32u), vec2<i32>(-u_input.a.x << (0u % 32u), 19765i) << (min(~vec2<u32>(0u, 61340u) << (_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, var_0.b), vec2<u32>(var_0.b, var_0.b)) % vec2<u32>(32u)), vec2<u32>(~var_0.b, ~var_0.b)) % vec2<u32>(32u)), arg_1.x <= 215f, Struct_1(arg_0.x));
    global0 = array<vec2<bool>, 16>();
    return _wgslsmith_f_op_f32(-arg_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1025f))), -215f, _wgslsmith_div_f32(-1314f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec4<i32>(u_input.a.x, 4802i, u_input.a.x, -40067i), vec2<f32>(399f, -1000f))) * -477f)), -1417f)));
    global2 = false;
    let var_1 = _wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.a.xz >> (vec2<u32>(~26517u, ~41156u) % vec2<u32>(32u)), vec2<i32>(-17498i, -31861i >> (select(41604u, 4294967295u, true) % 32u))), u_input.a.zy, vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.a.zz, vec2<i32>(-2279i, -90576i)), u_input.a.x) & _wgslsmith_add_vec2_i32(-vec2<i32>(12691i, -1i), vec2<i32>(max(1i, -16778i), ~u_input.a.x)));
    let var_2 = global1[_wgslsmith_index_u32(13236u, 18u)];
    global1 = array<Struct_3, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(-362f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(200f)), _wgslsmith_f_op_f32(var_2.c + 209f), true)) - _wgslsmith_f_op_f32(f32(-1f) * -179f)) + 1046f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -306f))))))), ~vec4<u32>(0u, min(5673u, abs(4294967295u)), ~21224u, ~abs(23942u)), countOneBits(_wgslsmith_clamp_i32(-_wgslsmith_dot_vec2_i32(var_2.a.xx, var_2.a.zz), var_1.x, _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.d.a, -1i, -1i, u_input.a.x), vec4<i32>(var_2.b.a.a, -13324i, 2147483647i, 0i)))));
}

