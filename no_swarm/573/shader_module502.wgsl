struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: bool,
    c: vec3<u32>,
    d: Struct_1,
    e: vec3<bool>,
}

struct Struct_4 {
    a: i32,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 9> = array<Struct_2, 9>(Struct_2(Struct_1(7697i), vec2<u32>(1u, 4294967295u), Struct_1(i32(-2147483648)), false, Struct_1(2147483647i)), Struct_2(Struct_1(0i), vec2<u32>(0u, 54892u), Struct_1(1i), true, Struct_1(0i)), Struct_2(Struct_1(-1i), vec2<u32>(52983u, 50569u), Struct_1(-1i), true, Struct_1(-43410i)), Struct_2(Struct_1(2147483647i), vec2<u32>(27155u, 14964u), Struct_1(-1i), false, Struct_1(-17305i)), Struct_2(Struct_1(-1i), vec2<u32>(0u, 1u), Struct_1(53i), false, Struct_1(5705i)), Struct_2(Struct_1(-13481i), vec2<u32>(6460u, 1u), Struct_1(-1i), true, Struct_1(0i)), Struct_2(Struct_1(i32(-2147483648)), vec2<u32>(4294967295u, 0u), Struct_1(-23814i), false, Struct_1(924i)), Struct_2(Struct_1(7520i), vec2<u32>(4294967295u, 20598u), Struct_1(-53i), false, Struct_1(2147483647i)), Struct_2(Struct_1(i32(-2147483648)), vec2<u32>(16532u, 0u), Struct_1(i32(-2147483648)), false, Struct_1(-17180i)));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: vec4<u32>, arg_3: Struct_4) -> Struct_4 {
    global0 = array<Struct_2, 9>();
    global0 = array<Struct_2, 9>();
    var var_0 = Struct_2(Struct_1(-16751i), ~(~arg_2.zz), Struct_1(55163i), true, Struct_1(1i << (min(17060u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 7826u, 44383u), vec3<u32>(u_input.c, arg_2.x, 28458u))) % 32u)));
    let var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1289f, 804f, arg_1, arg_3.b.x), vec4<f32>(-205f, arg_3.b.x, 1210f, arg_0))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.b.x, arg_3.b.x, 1000f, -545f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(616f, 1000f, -665f, 257f)))))), var_0.d, ~firstLeadingBit(u_input.d ^ vec3<u32>(var_0.b.x, var_0.b.x, var_0.b.x)), var_0.a, !vec3<bool>(true, all(select(vec2<bool>(var_0.d, true), vec2<bool>(var_0.d, true), true)), all(select(vec2<bool>(var_0.d, true), vec2<bool>(var_0.d, false), false))));
    var var_2 = select(vec4<bool>(select(arg_2.x > var_1.c.x, true, 23583u > var_1.c.x) && true, (var_0.d || any(vec3<bool>(true, false, var_1.e.x))) & (_wgslsmith_f_op_f32(var_1.a.x * 1000f) > _wgslsmith_f_op_f32(f32(-1f) * -885f)), !(!var_1.e.x), var_1.e.x | false), vec4<bool>(select(false, var_0.d, any(!vec3<bool>(false, false, var_0.d))), var_0.d, var_0.d, false), any(select(!vec3<bool>(var_0.d, var_0.d, false), !vec3<bool>(var_1.b, var_0.d, false), -814f <= arg_3.b.x)));
    return arg_3;
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_4, arg_2: Struct_2) -> u32 {
    global0 = array<Struct_2, 9>();
    return abs(1u);
}

fn func_1(arg_0: Struct_2, arg_1: vec4<f32>) -> vec2<u32> {
    global0 = array<Struct_2, 9>();
    return abs(~vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 49660u, u_input.d.x, 11502u), vec4<u32>(1u, 0u, u_input.d.x, u_input.d.x)), func_3(!vec4<bool>(true, false, arg_0.d, arg_0.d), func_2(-748f, arg_1.x, vec4<u32>(u_input.d.x, arg_0.b.x, u_input.d.x, arg_0.b.x), Struct_4(1i, vec2<f32>(-2137f, 1648f))), Struct_2(Struct_1(430i), vec2<u32>(0u, u_input.d.x), Struct_1(arg_0.e.a), arg_0.d, arg_0.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_mod_u32(~_wgslsmith_sub_u32(4294967295u, u_input.d.x), ~u_input.d.x) << (11864u % 32u);
    let var_1 = _wgslsmith_dot_vec2_u32(u_input.d.xz, _wgslsmith_mult_vec2_u32(~(~u_input.d.yy), func_1(global0[_wgslsmith_index_u32(countOneBits(~4294967295u), 9u)], _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2490f, -1378f, -700f, -435f)))));
    global0 = array<Struct_2, 9>();
    global0 = array<Struct_2, 9>();
    var var_2 = firstLeadingBit(_wgslsmith_mult_vec3_i32(-vec3<i32>(u_input.a, 2147483647i, u_input.a), vec3<i32>(-2147483647i | u_input.a, u_input.a, ~u_input.a))) << (u_input.d % vec3<u32>(32u));
    let var_3 = var_2.x;
    var var_4 = select(vec2<bool>(true & all(vec3<bool>(true, true, true)), false), vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(205f, 1545f)) - _wgslsmith_f_op_f32(select(-1562f, 3165f, true))) > 263f, !(!(4294967295u > var_1))), all(select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)))) | any(!select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true))));
    let var_5 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -209f), -324f, -383f, -984f)) * vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(1772f)), _wgslsmith_f_op_f32(floor(-958f)))), -815f, _wgslsmith_f_op_f32(min(-1525f, _wgslsmith_f_op_f32(1000f * 1000f))), -256f)), false, min(vec3<u32>(91575u, var_0, var_0), u_input.d), Struct_1(-(~_wgslsmith_add_i32(var_2.x, -1i))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), var_4.x), !vec3<bool>(true, false, var_4.x), select(!select(vec3<bool>(var_4.x, var_4.x, var_4.x), vec3<bool>(true, false, var_4.x), false), vec3<bool>(true, any(vec3<bool>(false, false, var_4.x)), var_4.x || false), var_4.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, _wgslsmith_div_f32(var_5.a.x, var_5.a.x)) * _wgslsmith_div_vec2_f32(vec2<f32>(var_5.a.x, -704f), _wgslsmith_f_op_vec2_f32(var_5.a.yz - var_5.a.yz)))));
}

