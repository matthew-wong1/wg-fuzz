struct Struct_1 {
    a: vec3<f32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
}

struct Struct_4 {
    a: i32,
    b: vec3<bool>,
    c: Struct_2,
    d: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<vec3<u32>, 29>;

var<private> global2: vec4<i32> = vec4<i32>(-24624i, 0i, 1i, -15606i);

var<private> global3: array<Struct_3, 6> = array<Struct_3, 6>(Struct_3(Struct_2(Struct_1(vec3<f32>(713f, -281f, 133f), vec3<i32>(0i, 1i, 1i))), vec4<i32>(0i, 2147483647i, -1i, 0i)), Struct_3(Struct_2(Struct_1(vec3<f32>(-691f, -164f, 491f), vec3<i32>(i32(-2147483648), 16482i, 2147483647i))), vec4<i32>(24679i, 1i, -12190i, 22229i)), Struct_3(Struct_2(Struct_1(vec3<f32>(-490f, 155f, -261f), vec3<i32>(i32(-2147483648), -1i, -19489i))), vec4<i32>(4727i, i32(-2147483648), 0i, -52918i)), Struct_3(Struct_2(Struct_1(vec3<f32>(1526f, -1006f, 982f), vec3<i32>(-19926i, 31072i, i32(-2147483648)))), vec4<i32>(2147483647i, -21171i, -1i, -62171i)), Struct_3(Struct_2(Struct_1(vec3<f32>(370f, 776f, -1485f), vec3<i32>(24154i, -1i, i32(-2147483648)))), vec4<i32>(2147483647i, -1i, 7871i, -1i)), Struct_3(Struct_2(Struct_1(vec3<f32>(-771f, 103f, 1070f), vec3<i32>(5827i, 0i, 3841i))), vec4<i32>(39484i, -1i, 2147483647i, i32(-2147483648))));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec3<i32> {
    var var_0 = Struct_4(abs(~1i), select(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), true), vec3<bool>(false, false, false)), vec3<bool>(global2.x >= _wgslsmith_add_i32(u_input.a.x, 1i), true & any(vec4<bool>(true, false, false, true)), 0i <= _wgslsmith_dot_vec3_i32(vec3<i32>(-17275i, u_input.a.x, u_input.b.x), u_input.b.zwx)), all(vec4<bool>(true, false, false, true))), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1000f, -1117f, -114f))))), vec3<i32>(-47886i, u_input.a.x, 23512i | u_input.a.x))), all(!select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false))));
    let var_1 = abs(~_wgslsmith_div_u32(_wgslsmith_mod_u32(27787u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 70992u, 67748u, 1u), vec4<u32>(4294967295u, 4294967295u, 80669u, 4294967295u))), 1u));
    let var_2 = var_0.c.a;
    var var_3 = var_1;
    var var_4 = _wgslsmith_f_op_f32(trunc(-1006f));
    return max((_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b.x, 1i, u_input.b.x), _wgslsmith_sub_vec3_i32(var_0.c.a.b, var_2.b)) & countOneBits(~global2.ywz)) ^ (select(global2.wwz, vec3<i32>(48835i, global2.x, 0i) ^ vec3<i32>(global2.x, var_0.c.a.b.x, global2.x), all(var_0.b)) | -(global2.zzx & var_0.c.a.b)), vec3<i32>(u_input.b.x, ~max(_wgslsmith_sub_i32(var_2.b.x, global2.x), 1i), var_2.b.x));
}

fn func_2(arg_0: vec2<i32>) -> f32 {
    global3 = array<Struct_3, 6>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-247f, 2022f), _wgslsmith_f_op_f32(floor(-1328f))));
    var var_1 = Struct_4(_wgslsmith_dot_vec3_i32(u_input.b.yxy, func_3()) & global2.x, vec3<bool>(false, true, true), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1983f, -370f, -337f))), reverseBits(-global2.xxx))), true);
    var_0 = -1616f;
    global3 = array<Struct_3, 6>();
    return 544f;
}

fn func_1() -> f32 {
    global0 = !select(true && any(vec3<bool>(true, true, true)), !(~global2.x >= ~(-39514i)), true);
    var var_0 = _wgslsmith_f_op_f32(func_2(u_input.b.xz)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1484f)))));
    let var_1 = ~_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(~1u, _wgslsmith_dot_vec2_u32(~vec2<u32>(44466u, 4294967295u), vec2<u32>(36988u, 45510u))), vec2<u32>(1u, 1u));
    global2 = -firstTrailingBit(firstTrailingBit(-min(u_input.b, vec4<i32>(57648i, 26527i, u_input.a.x, u_input.b.x))));
    var var_2 = !any(select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), any(vec2<bool>(true, true)))) | !(!all(vec2<bool>(false, true)) & any(vec4<bool>(false, true, false, true)));
    return _wgslsmith_f_op_f32(sign(1523f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    global3 = array<Struct_3, 6>();
    let var_1 = Struct_2(Struct_1(vec3<f32>(-809f, _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(func_1())), 1330f), vec3<i32>(1i, select(-41156i, global2.x, any(vec2<bool>(false, false))), ~(-23007i))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(204f, 1509f)), _wgslsmith_f_op_f32(func_1())) - var_1.a.a.zz)));
    global0 = all(vec4<bool>(!(var_0 & var_0) & false, var_0, true, var_0));
    let var_3 = u_input.b.x;
    let var_4 = Struct_4(_wgslsmith_clamp_i32(-7009i, var_1.a.b.x >> (_wgslsmith_dot_vec2_u32(vec2<u32>(28119u, 1u), vec2<u32>(28218u, 1u)) % 32u), 1i) << (4294967295u % 32u), !(!(!vec3<bool>(var_0, var_0, true))), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.a.a)), select(u_input.b.wyz, ~global2.wyy, vec3<bool>(false, var_0, true)))), any(vec4<bool>(var_0, false, true, var_0)));
    var_2 = var_1.a.a.xz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-779f)) - _wgslsmith_f_op_f32(abs(var_1.a.a.x))))));
}

