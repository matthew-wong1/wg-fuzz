struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: vec4<bool>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 27>;

var<private> global1: Struct_2 = Struct_2(true, Struct_1(-58997i, vec2<i32>(i32(-2147483648), 19875i), vec4<bool>(false, false, false, true), vec3<u32>(1u, 4294967295u, 4294967295u)), 4294967295u);

var<private> global2: array<Struct_3, 15> = array<Struct_3, 15>(Struct_3(Struct_2(false, Struct_1(20030i, vec2<i32>(1i, -1i), vec4<bool>(true, false, false, true), vec3<u32>(21921u, 0u, 4294967295u)), 0u), Struct_1(-1i, vec2<i32>(1i, 1i), vec4<bool>(false, true, false, true), vec3<u32>(28773u, 41562u, 33471u)), Struct_2(true, Struct_1(-28535i, vec2<i32>(1i, -1i), vec4<bool>(true, true, false, false), vec3<u32>(45447u, 19278u, 4294967295u)), 47440u)), Struct_3(Struct_2(true, Struct_1(-22561i, vec2<i32>(26653i, 0i), vec4<bool>(false, false, true, true), vec3<u32>(34160u, 1u, 72042u)), 1u), Struct_1(-6747i, vec2<i32>(1i, 14172i), vec4<bool>(false, false, false, false), vec3<u32>(1u, 0u, 1u)), Struct_2(true, Struct_1(i32(-2147483648), vec2<i32>(25717i, 25153i), vec4<bool>(false, true, true, true), vec3<u32>(17404u, 19300u, 23077u)), 4294967295u)), Struct_3(Struct_2(false, Struct_1(9023i, vec2<i32>(-14220i, -1i), vec4<bool>(false, true, true, true), vec3<u32>(1u, 24881u, 54846u)), 0u), Struct_1(2147483647i, vec2<i32>(2147483647i, 25946i), vec4<bool>(true, false, true, false), vec3<u32>(0u, 44400u, 73405u)), Struct_2(false, Struct_1(-51891i, vec2<i32>(0i, 20179i), vec4<bool>(true, false, true, true), vec3<u32>(86887u, 83070u, 1u)), 92051u)), Struct_3(Struct_2(false, Struct_1(30i, vec2<i32>(i32(-2147483648), 10175i), vec4<bool>(false, false, true, true), vec3<u32>(73149u, 0u, 4294967295u)), 15159u), Struct_1(-29855i, vec2<i32>(1i, 0i), vec4<bool>(false, true, true, true), vec3<u32>(4294967295u, 9146u, 26374u)), Struct_2(false, Struct_1(-1i, vec2<i32>(2147483647i, 75704i), vec4<bool>(true, true, false, true), vec3<u32>(28243u, 50097u, 4294967295u)), 1u)), Struct_3(Struct_2(true, Struct_1(1i, vec2<i32>(i32(-2147483648), -1i), vec4<bool>(true, false, false, true), vec3<u32>(1u, 24438u, 4294967295u)), 6251u), Struct_1(-43050i, vec2<i32>(i32(-2147483648), -50162i), vec4<bool>(true, false, false, true), vec3<u32>(62946u, 0u, 1u)), Struct_2(false, Struct_1(32690i, vec2<i32>(-12908i, -21015i), vec4<bool>(true, true, false, true), vec3<u32>(19876u, 4294967295u, 12830u)), 24648u)), Struct_3(Struct_2(false, Struct_1(31781i, vec2<i32>(0i, 13397i), vec4<bool>(false, true, true, false), vec3<u32>(145744u, 65939u, 11003u)), 25460u), Struct_1(2147483647i, vec2<i32>(i32(-2147483648), -1i), vec4<bool>(false, false, false, false), vec3<u32>(0u, 24094u, 1u)), Struct_2(true, Struct_1(-25337i, vec2<i32>(-31977i, -1i), vec4<bool>(true, true, false, false), vec3<u32>(7107u, 24949u, 23099u)), 23834u)), Struct_3(Struct_2(true, Struct_1(28442i, vec2<i32>(-41201i, -35290i), vec4<bool>(true, false, false, false), vec3<u32>(35004u, 25419u, 3785u)), 4294967295u), Struct_1(21913i, vec2<i32>(i32(-2147483648), 0i), vec4<bool>(true, false, true, true), vec3<u32>(4294967295u, 48442u, 4294967295u)), Struct_2(true, Struct_1(-5365i, vec2<i32>(0i, -1i), vec4<bool>(true, false, true, true), vec3<u32>(87003u, 67179u, 4294967295u)), 0u)), Struct_3(Struct_2(false, Struct_1(-11948i, vec2<i32>(9370i, -22671i), vec4<bool>(false, true, false, false), vec3<u32>(12465u, 0u, 0u)), 57189u), Struct_1(3115i, vec2<i32>(0i, i32(-2147483648)), vec4<bool>(false, true, false, true), vec3<u32>(1u, 1u, 1u)), Struct_2(true, Struct_1(1i, vec2<i32>(64775i, 7429i), vec4<bool>(true, true, true, true), vec3<u32>(4294967295u, 0u, 54960u)), 1u)), Struct_3(Struct_2(true, Struct_1(1i, vec2<i32>(-24571i, 46157i), vec4<bool>(true, true, false, false), vec3<u32>(1u, 9214u, 147328u)), 60795u), Struct_1(-20598i, vec2<i32>(2147483647i, 1i), vec4<bool>(true, false, true, true), vec3<u32>(4294967295u, 19803u, 4294967295u)), Struct_2(true, Struct_1(2147483647i, vec2<i32>(2147483647i, 13073i), vec4<bool>(false, false, false, false), vec3<u32>(1u, 1u, 19029u)), 4294967295u)), Struct_3(Struct_2(true, Struct_1(1i, vec2<i32>(1i, i32(-2147483648)), vec4<bool>(false, true, false, true), vec3<u32>(5896u, 53328u, 27083u)), 4294967295u), Struct_1(0i, vec2<i32>(64556i, 52835i), vec4<bool>(true, true, true, false), vec3<u32>(93184u, 11922u, 1u)), Struct_2(true, Struct_1(0i, vec2<i32>(i32(-2147483648), 0i), vec4<bool>(true, true, false, true), vec3<u32>(48420u, 1631u, 4294967295u)), 29793u)), Struct_3(Struct_2(true, Struct_1(-25300i, vec2<i32>(-36353i, 29432i), vec4<bool>(true, true, true, false), vec3<u32>(68968u, 61755u, 54762u)), 0u), Struct_1(-24207i, vec2<i32>(-7960i, -3828i), vec4<bool>(false, true, false, true), vec3<u32>(39602u, 9165u, 4294967295u)), Struct_2(true, Struct_1(2147483647i, vec2<i32>(i32(-2147483648), -1i), vec4<bool>(true, false, false, true), vec3<u32>(460u, 1u, 4294967295u)), 0u)), Struct_3(Struct_2(true, Struct_1(-110644i, vec2<i32>(8097i, -18912i), vec4<bool>(true, true, true, false), vec3<u32>(0u, 30959u, 64107u)), 4294967295u), Struct_1(0i, vec2<i32>(-1i, 22326i), vec4<bool>(true, false, false, true), vec3<u32>(70917u, 17764u, 4003u)), Struct_2(true, Struct_1(2147483647i, vec2<i32>(1i, -44733i), vec4<bool>(true, false, false, true), vec3<u32>(4294967295u, 1u, 17685u)), 16619u)), Struct_3(Struct_2(false, Struct_1(12400i, vec2<i32>(-32194i, 2147483647i), vec4<bool>(false, false, false, false), vec3<u32>(1u, 2503u, 1u)), 1u), Struct_1(2147483647i, vec2<i32>(1706i, 0i), vec4<bool>(false, false, false, true), vec3<u32>(45556u, 1u, 4294967295u)), Struct_2(false, Struct_1(33463i, vec2<i32>(-1i, 1i), vec4<bool>(false, false, true, false), vec3<u32>(120173u, 4294967295u, 1u)), 37409u)), Struct_3(Struct_2(false, Struct_1(16029i, vec2<i32>(-1i, 2147483647i), vec4<bool>(true, false, true, false), vec3<u32>(46723u, 46160u, 60848u)), 1u), Struct_1(i32(-2147483648), vec2<i32>(0i, -27782i), vec4<bool>(true, true, false, true), vec3<u32>(17474u, 0u, 4294967295u)), Struct_2(false, Struct_1(-1i, vec2<i32>(-1i, -31941i), vec4<bool>(true, false, false, false), vec3<u32>(9641u, 1u, 4294967295u)), 0u)), Struct_3(Struct_2(true, Struct_1(2147483647i, vec2<i32>(i32(-2147483648), 1i), vec4<bool>(false, false, false, true), vec3<u32>(2063u, 0u, 4294967295u)), 0u), Struct_1(i32(-2147483648), vec2<i32>(1i, 43382i), vec4<bool>(true, true, false, true), vec3<u32>(1u, 59870u, 4294967295u)), Struct_2(false, Struct_1(-1i, vec2<i32>(2147483647i, i32(-2147483648)), vec4<bool>(false, true, true, true), vec3<u32>(13374u, 1289u, 48358u)), 61986u)));

var<private> global3: Struct_3 = Struct_3(Struct_2(false, Struct_1(i32(-2147483648), vec2<i32>(1i, i32(-2147483648)), vec4<bool>(true, true, false, false), vec3<u32>(13612u, 48707u, 0u)), 1u), Struct_1(-1i, vec2<i32>(21324i, i32(-2147483648)), vec4<bool>(true, false, false, true), vec3<u32>(4294967295u, 4294967295u, 1u)), Struct_2(false, Struct_1(-57138i, vec2<i32>(i32(-2147483648), 46429i), vec4<bool>(false, true, false, false), vec3<u32>(1u, 10177u, 39955u)), 14914u));

var<private> global4: f32 = 321f;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: i32, arg_1: vec3<i32>, arg_2: Struct_4, arg_3: Struct_4) -> vec4<bool> {
    return !(!vec4<bool>(!arg_2.a.b.c.x, arg_2.a.b.c.x, arg_2.a.a, global1.b.c.x));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> f32 {
    global2 = array<Struct_3, 15>();
    let var_0 = select(all(!vec2<bool>(all(vec4<bool>(true, arg_0.x, global3.b.c.x, true)), global1.b.c.x)), !all(select(arg_1.c.zw, !global1.b.c.ww, true)), true);
    var var_1 = !(!select(func_3(arg_2.b.x, vec3<i32>(41875i, 2147483647i, -17537i), Struct_4(global3.a), Struct_4(Struct_2(false, arg_2, 4294967295u))).zzx, !select(global3.b.c.yzw, vec3<bool>(arg_3, global1.b.c.x, false), true), vec3<bool>(false, false, 55962u != global3.b.d.x)));
    global0 = array<i32, 27>();
    var var_2 = -global0[_wgslsmith_index_u32(~(~(1u >> (~global1.c % 32u))), 27u)];
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1351f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(676f + -135f) - -1432f))) - 875f);
}

fn func_2(arg_0: i32) -> f32 {
    global0 = array<i32, 27>();
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(343f, -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -365f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1609f), _wgslsmith_f_op_f32(max(-908f, _wgslsmith_f_op_f32(floor(375f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -778f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1411f, 570f, -1028f))) + _wgslsmith_div_vec3_f32(vec3<f32>(-918f, 1577f, 959f), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1163f, -539f, 2293f), vec3<f32>(148f, 773f, 383f)))))));
    var var_1 = _wgslsmith_f_op_f32(376f + var_0.x);
    var var_2 = -2220f;
    let var_3 = global1.b.c.xy;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_4(func_3(global0[_wgslsmith_index_u32(0u, 27u)], u_input.b.zzw, Struct_4(global3.c), Struct_4(Struct_2(true, global1.b, 17832u))), global1.b, Struct_1(-1i, global1.b.b, vec4<bool>(var_3.x, true, global1.a, true), global3.b.d), false)))))) - _wgslsmith_f_op_f32(-var_0.x));
}

fn func_1() -> vec3<i32> {
    global2 = array<Struct_3, 15>();
    let var_0 = _wgslsmith_f_op_f32(func_2(global3.b.a));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0))))) - var_0);
    global3 = Struct_3(global3.c, global3.b, global3.a);
    var var_2 = global2[_wgslsmith_index_u32(4294967295u, 15u)];
    return u_input.b.zwy;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2[_wgslsmith_index_u32(23739u, 15u)];
    let var_1 = func_1();
    global0 = array<i32, 27>();
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -382f);
    let x = u_input.a;
    s_output = StorageBuffer(~firstTrailingBit(global1.c), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-102f))))), u_input.b.x, abs(~_wgslsmith_div_u32(4294967295u, global3.c.b.d.x)) & _wgslsmith_mult_u32(~u_input.c.x, ~92732u));
}

