struct Struct_1 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: vec4<bool>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec2<f32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
    d: vec4<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 26> = array<Struct_3, 26>(Struct_3(8121i, vec2<f32>(-161f, -180f), Struct_2(Struct_1(vec2<u32>(0u, 1u), vec3<bool>(true, false, false), vec4<bool>(true, true, true, true), false))), Struct_3(-1i, vec2<f32>(-545f, -1202f), Struct_2(Struct_1(vec2<u32>(1u, 4294967295u), vec3<bool>(true, false, false), vec4<bool>(true, false, false, false), false))), Struct_3(2147483647i, vec2<f32>(-314f, 461f), Struct_2(Struct_1(vec2<u32>(21943u, 41492u), vec3<bool>(false, false, false), vec4<bool>(true, false, true, false), true))), Struct_3(-1i, vec2<f32>(-1011f, -890f), Struct_2(Struct_1(vec2<u32>(56688u, 15650u), vec3<bool>(false, true, true), vec4<bool>(false, true, false, false), true))), Struct_3(-8931i, vec2<f32>(427f, 575f), Struct_2(Struct_1(vec2<u32>(42324u, 4294967295u), vec3<bool>(true, false, false), vec4<bool>(false, true, true, true), false))), Struct_3(-45152i, vec2<f32>(713f, 775f), Struct_2(Struct_1(vec2<u32>(1u, 5687u), vec3<bool>(true, true, true), vec4<bool>(true, true, false, true), false))), Struct_3(28180i, vec2<f32>(-174f, -837f), Struct_2(Struct_1(vec2<u32>(24790u, 0u), vec3<bool>(true, true, false), vec4<bool>(false, false, false, true), false))), Struct_3(59852i, vec2<f32>(-242f, -1784f), Struct_2(Struct_1(vec2<u32>(4294967295u, 39087u), vec3<bool>(true, false, true), vec4<bool>(false, false, true, false), false))), Struct_3(1i, vec2<f32>(948f, 593f), Struct_2(Struct_1(vec2<u32>(1u, 61669u), vec3<bool>(true, true, false), vec4<bool>(true, true, false, true), false))), Struct_3(i32(-2147483648), vec2<f32>(-371f, 2302f), Struct_2(Struct_1(vec2<u32>(4294967295u, 53304u), vec3<bool>(false, true, true), vec4<bool>(false, false, true, true), false))), Struct_3(1i, vec2<f32>(1895f, -1424f), Struct_2(Struct_1(vec2<u32>(1u, 58589u), vec3<bool>(false, false, true), vec4<bool>(true, false, false, false), true))), Struct_3(-44284i, vec2<f32>(2652f, -900f), Struct_2(Struct_1(vec2<u32>(1u, 4294967295u), vec3<bool>(true, false, false), vec4<bool>(false, false, true, false), false))), Struct_3(2147483647i, vec2<f32>(425f, 1241f), Struct_2(Struct_1(vec2<u32>(1u, 58034u), vec3<bool>(true, true, false), vec4<bool>(false, true, true, false), false))), Struct_3(0i, vec2<f32>(767f, -1622f), Struct_2(Struct_1(vec2<u32>(16905u, 43345u), vec3<bool>(true, true, true), vec4<bool>(false, false, true, true), false))), Struct_3(-18979i, vec2<f32>(472f, -917f), Struct_2(Struct_1(vec2<u32>(1u, 0u), vec3<bool>(false, false, true), vec4<bool>(true, false, true, true), false))), Struct_3(50801i, vec2<f32>(712f, 667f), Struct_2(Struct_1(vec2<u32>(1u, 21373u), vec3<bool>(false, true, true), vec4<bool>(false, false, false, true), true))), Struct_3(31728i, vec2<f32>(224f, 645f), Struct_2(Struct_1(vec2<u32>(118594u, 198u), vec3<bool>(false, false, true), vec4<bool>(true, true, false, true), true))), Struct_3(-14019i, vec2<f32>(-391f, 422f), Struct_2(Struct_1(vec2<u32>(1u, 0u), vec3<bool>(false, true, false), vec4<bool>(false, false, true, false), false))), Struct_3(0i, vec2<f32>(-261f, -1554f), Struct_2(Struct_1(vec2<u32>(0u, 13684u), vec3<bool>(true, false, false), vec4<bool>(true, true, false, false), false))), Struct_3(-5436i, vec2<f32>(1122f, 1000f), Struct_2(Struct_1(vec2<u32>(11392u, 1u), vec3<bool>(false, true, true), vec4<bool>(true, true, true, false), true))), Struct_3(-37701i, vec2<f32>(-310f, 232f), Struct_2(Struct_1(vec2<u32>(0u, 4146u), vec3<bool>(true, false, true), vec4<bool>(false, true, false, true), true))), Struct_3(0i, vec2<f32>(965f, -933f), Struct_2(Struct_1(vec2<u32>(44688u, 50108u), vec3<bool>(false, true, false), vec4<bool>(false, false, true, true), true))), Struct_3(48043i, vec2<f32>(-2783f, 398f), Struct_2(Struct_1(vec2<u32>(108682u, 4294967295u), vec3<bool>(false, true, true), vec4<bool>(false, true, false, false), false))), Struct_3(-1i, vec2<f32>(-1299f, 132f), Struct_2(Struct_1(vec2<u32>(4294967295u, 1u), vec3<bool>(false, false, false), vec4<bool>(false, true, true, false), true))), Struct_3(-2978i, vec2<f32>(2173f, -599f), Struct_2(Struct_1(vec2<u32>(14558u, 18982u), vec3<bool>(true, false, true), vec4<bool>(true, true, false, true), false))), Struct_3(0i, vec2<f32>(714f, -1408f), Struct_2(Struct_1(vec2<u32>(43536u, 16113u), vec3<bool>(true, false, false), vec4<bool>(true, false, true, false), false))));

var<private> global1: array<Struct_2, 27>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> i32 {
    global1 = array<Struct_2, 27>();
    let var_0 = vec4<bool>(all(select(vec3<bool>(all(vec3<bool>(true, true, false)), any(vec2<bool>(true, false)), any(vec2<bool>(false, true))), !select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), true), true)), any(!vec4<bool>(all(vec4<bool>(false, true, false, true)), true, all(vec2<bool>(true, false)), true)), false & select(all(select(vec2<bool>(true, false), vec2<bool>(false, true), true)), any(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true))), (u_input.d == u_input.d) | all(vec4<bool>(false, false, true, true))), u_input.c.x < 2147483647i);
    let var_1 = ~(~u_input.a.xx);
    global1 = array<Struct_2, 27>();
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -1185f)) * -617f);
    return -33148i;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<bool>) -> u32 {
    global0 = array<Struct_3, 26>();
    var var_0 = func_3();
    var_0 = arg_0.x;
    global1 = array<Struct_2, 27>();
    var_0 = u_input.a.x;
    return 43999u << (u_input.d % 32u);
}

fn func_4(arg_0: vec3<u32>, arg_1: u32, arg_2: i32) -> bool {
    let var_0 = u_input.a.xy;
    let var_1 = Struct_1(reverseBits(arg_0.zz), !select(vec3<bool>(all(vec4<bool>(false, true, true, true)), true, all(vec4<bool>(false, true, false, false))), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true))), vec4<bool>(any(vec4<bool>(any(vec4<bool>(false, true, true, true)), all(vec3<bool>(false, false, false)), any(vec3<bool>(true, true, false)), any(vec3<bool>(true, false, false)))), any(select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true)), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false)), vec4<bool>(false, false, true, true))), any(select(vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(true, false), false), vec2<bool>(true, true))), any(!select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false)))), select(all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(false, false, true))), any(vec3<bool>(arg_2 <= -2147483647i, all(vec4<bool>(false, true, true, true)), false)), !(arg_1 != 60082u) | true));
    let var_2 = Struct_1(~arg_0.yy, !var_1.c.yyx, !var_1.c, var_1.b.x);
    var var_3 = ~(1u << (~var_1.a.x % 32u));
    var var_4 = global0[_wgslsmith_index_u32(4294967295u, 26u)];
    return var_1.b.x;
}

fn func_1() -> Struct_1 {
    var var_0 = u_input.d;
    var_0 = 0u;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -395f)));
    global1 = array<Struct_2, 27>();
    return Struct_1(~_wgslsmith_add_vec2_u32(~_wgslsmith_sub_vec2_u32(u_input.b.zz, vec2<u32>(34526u, u_input.b.x)), vec2<u32>(~u_input.d, 78338u)), vec3<bool>(!func_4(~u_input.b, func_2(u_input.a.yw, vec3<bool>(false, true, false)), 7285i), ~u_input.b.x >= _wgslsmith_div_u32(u_input.b.x, 60565u), any(vec3<bool>(true, true, true))), select(select(!select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), false), vec4<bool>(true, true, any(vec4<bool>(false, true, true, false)), true), all(vec2<bool>(true, false))), vec4<bool>(true, !any(vec4<bool>(true, true, true, true)), true, true), any(select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true)), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), true), true))), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = 4294967295u;
    let var_2 = firstLeadingBit(vec2<i32>(_wgslsmith_mult_i32(u_input.a.x, ~(-10415i)) | u_input.c.x, u_input.c.x));
    var var_3 = false;
    let var_4 = Struct_1(_wgslsmith_add_vec2_u32(var_0.a, vec2<u32>(_wgslsmith_mod_u32(29506u, ~u_input.b.x), ~4294967295u)), var_0.b, select(select(vec4<bool>(var_2.x < 2147483647i, var_0.c.x, all(var_0.b.zz), select(false, var_0.c.x, true)), var_0.c, vec4<bool>(all(vec4<bool>(true, false, var_0.d, true)), true, var_0.b.x, !var_0.b.x)), vec4<bool>(any(vec4<bool>(true, true, true, true)), var_0.d, reverseBits(-22739i) >= u_input.a.x, var_0.b.x), var_0.c.x), false);
    global1 = array<Struct_2, 27>();
    global0 = array<Struct_3, 26>();
    var_0 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(-10563i, -_wgslsmith_dot_vec4_i32(firstLeadingBit(firstLeadingBit(u_input.a)), vec4<i32>(2147483647i ^ var_2.x, ~u_input.a.x, 1i, -1i)), _wgslsmith_div_f32(382f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-636f, 577f, !var_0.b.x)) + 975f)), ~(~max(~vec4<u32>(u_input.b.x, u_input.d, u_input.d, 0u), ~vec4<u32>(var_1, var_4.a.x, 69646u, 4294967295u))), ~reverseBits(vec3<i32>(u_input.c.x, -15104i, u_input.c.x) & ~u_input.c));
}

