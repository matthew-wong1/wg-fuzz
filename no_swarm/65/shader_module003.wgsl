struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<f32>,
    d: bool,
}

struct Struct_2 {
    a: i32,
    b: vec2<i32>,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(2147483647i, vec2<i32>(-2795i, 1i), false), Struct_2(1i, vec2<i32>(-48294i, 20161i), true), Struct_2(8417i, vec2<i32>(i32(-2147483648), 1i), true), Struct_2(-89631i, vec2<i32>(21094i, -1i), true), Struct_2(2147483647i, vec2<i32>(i32(-2147483648), 1i), true), Struct_2(-1i, vec2<i32>(-1i, 2147483647i), false), Struct_2(-2940i, vec2<i32>(1i, 30238i), false), Struct_2(21958i, vec2<i32>(-4620i, -34143i), true), Struct_2(-55144i, vec2<i32>(1i, 0i), true), Struct_2(31956i, vec2<i32>(2147483647i, i32(-2147483648)), true), Struct_2(-28039i, vec2<i32>(0i, 0i), false), Struct_2(-16498i, vec2<i32>(16642i, 4763i), false), Struct_2(-10508i, vec2<i32>(31469i, i32(-2147483648)), false), Struct_2(1i, vec2<i32>(1i, -1i), false), Struct_2(9567i, vec2<i32>(-29054i, 0i), false), Struct_2(0i, vec2<i32>(1i, -23031i), true), Struct_2(0i, vec2<i32>(5948i, 1i), false), Struct_2(-19931i, vec2<i32>(0i, 33262i), true), Struct_2(-13760i, vec2<i32>(1i, i32(-2147483648)), false), Struct_2(-1i, vec2<i32>(-48580i, 45393i), false));

var<private> global1: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(-217i, vec2<i32>(-14147i, 12967i), true), Struct_2(1958i, vec2<i32>(-1612i, -20999i), false), Struct_2(55534i, vec2<i32>(9997i, -40209i), false), Struct_2(23025i, vec2<i32>(37570i, -1i), false), Struct_2(47914i, vec2<i32>(i32(-2147483648), 23110i), true), Struct_2(1i, vec2<i32>(1i, 12834i), false), Struct_2(-3984i, vec2<i32>(2147483647i, -2010i), false), Struct_2(-1083i, vec2<i32>(-11567i, -1i), false), Struct_2(-3024i, vec2<i32>(0i, 2147483647i), false), Struct_2(4655i, vec2<i32>(-20848i, 1i), true), Struct_2(24255i, vec2<i32>(-8878i, i32(-2147483648)), true), Struct_2(i32(-2147483648), vec2<i32>(8244i, -7006i), true), Struct_2(0i, vec2<i32>(i32(-2147483648), 33940i), false), Struct_2(20968i, vec2<i32>(17854i, 1i), false), Struct_2(11832i, vec2<i32>(12779i, -556i), true), Struct_2(-1i, vec2<i32>(2147483647i, -1i), true), Struct_2(-29371i, vec2<i32>(-3187i, -45378i), true), Struct_2(i32(-2147483648), vec2<i32>(10225i, 2147483647i), false), Struct_2(61835i, vec2<i32>(1i, -894i), true), Struct_2(12069i, vec2<i32>(1i, -9312i), false), Struct_2(2147483647i, vec2<i32>(1i, -16802i), false), Struct_2(-26646i, vec2<i32>(-1i, 1i), false), Struct_2(2147483647i, vec2<i32>(37992i, i32(-2147483648)), false), Struct_2(59062i, vec2<i32>(19850i, -1i), false), Struct_2(-34907i, vec2<i32>(1i, -13628i), true));

var<private> global2: array<f32, 15> = array<f32, 15>(768f, 1149f, 2017f, -552f, -142f, -238f, -599f, -1000f, -623f, 868f, 1247f, 695f, -1000f, 1177f, 1656f);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: f32, arg_1: vec4<i32>) -> bool {
    let var_0 = -firstLeadingBit(arg_1.x);
    return !(_wgslsmith_div_i32(0i, u_input.a.x) <= ~max(-7278i, _wgslsmith_mod_i32(-2147483647i, -13578i)));
}

fn func_1(arg_0: vec2<i32>) -> Struct_2 {
    global0 = array<Struct_2, 20>();
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(4294967295u, 8683u), 15u)])))));
    let var_1 = ~min(~vec2<u32>(~1u, ~41655u), max(select(~vec2<u32>(10716u, 1u), vec2<u32>(0u, 13388u), true), firstTrailingBit(vec2<u32>(101461u, 1u))));
    var var_2 = Struct_1(var_0, ~(~var_1.x), vec4<f32>(1f, -1523f, _wgslsmith_f_op_f32(min(802f, _wgslsmith_f_op_f32(f32(-1f) * -1765f))), _wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(~var_1.x, 15u)]))), any(!vec3<bool>(func_2(530f, vec4<i32>(-37623i, 1i, u_input.a.x, 11565i)), true, true)));
    var var_3 = global0[_wgslsmith_index_u32(var_1.x, 20u)];
    return global0[_wgslsmith_index_u32(var_2.b, 20u)];
}

fn func_3() -> u32 {
    global2 = array<f32, 15>();
    var var_0 = all(vec2<bool>(u_input.a.x >= (u_input.a.x ^ u_input.a.x), (i32(-1i) * -13690i) <= func_1(vec2<i32>(u_input.a.x, u_input.a.x)).b.x)) && func_1(u_input.a).c;
    global2 = array<f32, 15>();
    var var_1 = global1[_wgslsmith_index_u32(45706u, 25u)];
    var var_2 = ~min(~(~vec2<u32>(1u, 6562u)), ~vec2<u32>(1u, 1u));
    return ~_wgslsmith_mod_u32(820u << (max(77874u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.x, 6026u, 26587u), vec3<u32>(4294967295u, var_2.x, var_2.x))) % 32u), var_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(-(vec2<i32>(-1i) * -(u_input.a >> (vec2<u32>(4294967295u, 0u) % vec2<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_mult_vec2_u32(firstLeadingBit(vec2<u32>(31055u, 12863u)), vec2<u32>(1u, 1u)), vec2<u32>(1u, 1u)), firstTrailingBit(vec3<u32>(func_3(), 1u, 1u)));
}

