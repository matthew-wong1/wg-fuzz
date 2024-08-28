struct Struct_1 {
    a: vec2<i32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
    d: bool,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: Struct_2,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(10325u, 76909u);

var<private> global1: array<Struct_5, 12> = array<Struct_5, 12>(Struct_5(Struct_2(Struct_1(vec2<i32>(-39022i, -11724i), -17017i), Struct_1(vec2<i32>(2147483647i, 1i), 0i), vec4<i32>(56355i, -8362i, 1i, -28859i), false), vec2<u32>(1u, 63929u)), Struct_5(Struct_2(Struct_1(vec2<i32>(2147483647i, 1i), -64561i), Struct_1(vec2<i32>(-8500i, 2147483647i), 2147483647i), vec4<i32>(2147483647i, 0i, 59152i, i32(-2147483648)), true), vec2<u32>(25343u, 4294967295u)), Struct_5(Struct_2(Struct_1(vec2<i32>(-1i, 0i), -1i), Struct_1(vec2<i32>(2147483647i, -1i), 0i), vec4<i32>(0i, 34605i, 7202i, 26839i), true), vec2<u32>(6307u, 84613u)), Struct_5(Struct_2(Struct_1(vec2<i32>(16902i, 2734i), 0i), Struct_1(vec2<i32>(i32(-2147483648), 1987i), -7002i), vec4<i32>(-9501i, i32(-2147483648), -1972i, -1i), true), vec2<u32>(1u, 48403u)), Struct_5(Struct_2(Struct_1(vec2<i32>(0i, -61019i), i32(-2147483648)), Struct_1(vec2<i32>(18480i, -7809i), 2400i), vec4<i32>(11098i, 46082i, -1i, -1i), true), vec2<u32>(4294967295u, 4294967295u)), Struct_5(Struct_2(Struct_1(vec2<i32>(2845i, 1i), 21724i), Struct_1(vec2<i32>(-1i, -30544i), -24380i), vec4<i32>(-53153i, -27960i, i32(-2147483648), 37048i), false), vec2<u32>(0u, 0u)), Struct_5(Struct_2(Struct_1(vec2<i32>(-46518i, 5069i), i32(-2147483648)), Struct_1(vec2<i32>(-12894i, -1i), 0i), vec4<i32>(2147483647i, i32(-2147483648), -46498i, -75729i), false), vec2<u32>(0u, 57012u)), Struct_5(Struct_2(Struct_1(vec2<i32>(36128i, 1i), i32(-2147483648)), Struct_1(vec2<i32>(-5350i, 1552i), i32(-2147483648)), vec4<i32>(-3930i, 0i, 0i, 2147483647i), true), vec2<u32>(4294967295u, 0u)), Struct_5(Struct_2(Struct_1(vec2<i32>(-1i, -1i), 5888i), Struct_1(vec2<i32>(74057i, 81511i), -833i), vec4<i32>(-533i, 8221i, 1i, 1i), false), vec2<u32>(4294967295u, 29338u)), Struct_5(Struct_2(Struct_1(vec2<i32>(i32(-2147483648), 39441i), 1i), Struct_1(vec2<i32>(-35520i, 105514i), 3321i), vec4<i32>(i32(-2147483648), -39001i, -41741i, 1i), true), vec2<u32>(26890u, 1u)), Struct_5(Struct_2(Struct_1(vec2<i32>(46537i, 1i), -1i), Struct_1(vec2<i32>(i32(-2147483648), 23273i), i32(-2147483648)), vec4<i32>(22633i, 2147483647i, 1i, -24117i), true), vec2<u32>(19261u, 0u)), Struct_5(Struct_2(Struct_1(vec2<i32>(0i, 2147483647i), 43553i), Struct_1(vec2<i32>(2147483647i, 1i), 19210i), vec4<i32>(i32(-2147483648), 0i, 10550i, i32(-2147483648)), false), vec2<u32>(0u, 0u)));

var<private> global2: array<bool, 13> = array<bool, 13>(false, false, true, false, true, true, true, true, true, false, false, false, true);

var<private> global3: array<Struct_3, 8>;

var<private> global4: array<i32, 27>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: vec3<i32>, arg_2: f32, arg_3: u32) -> vec3<u32> {
    global4 = array<i32, 27>();
    var var_0 = global1[_wgslsmith_index_u32(1u, 12u)];
    let var_1 = var_0.a.a;
    global4 = array<i32, 27>();
    global1 = array<Struct_5, 12>();
    return vec3<u32>(arg_3, ~u_input.c.x, _wgslsmith_add_u32(1994u, 54078u));
}

fn func_2() -> vec4<i32> {
    global4 = array<i32, 27>();
    var var_0 = Struct_1(vec2<i32>(abs(10619i), global4[_wgslsmith_index_u32(u_input.c.x, 27u)]), 51766i);
    global4 = array<i32, 27>();
    let var_1 = _wgslsmith_clamp_vec3_u32(firstTrailingBit(u_input.c.ywy), u_input.c.zzx, ~(~func_3(u_input.a.x, vec3<i32>(0i, u_input.b, -2147483647i), -1663f, ~global0.x)));
    let var_2 = _wgslsmith_mod_i32(firstTrailingBit(-u_input.b), 2147483647i) >> (global0.x % 32u);
    return vec4<i32>(var_0.a.x, ~_wgslsmith_mult_i32(-_wgslsmith_div_i32(u_input.b, -27633i), abs(u_input.b)), _wgslsmith_div_i32(2147483647i, ~40086i), firstLeadingBit(-(~var_0.b) >> (~26655u % 32u)));
}

fn func_1(arg_0: Struct_5) -> Struct_1 {
    let var_0 = u_input.a.x;
    var var_1 = arg_0.a.c;
    var var_2 = arg_0.a.a;
    var_2 = arg_0.a.a;
    var_1 = arg_0.a.c | -func_2();
    return arg_0.a.a;
}

fn func_4(arg_0: f32, arg_1: Struct_1) -> Struct_2 {
    global1 = array<Struct_5, 12>();
    global3 = array<Struct_3, 8>();
    var var_0 = Struct_4(max(~(~(~4294967295u)), _wgslsmith_mult_u32(select(func_3(70154i, vec3<i32>(1i, global4[_wgslsmith_index_u32(global0.x, 27u)], -23301i), arg_0, 1u).x, global0.x, global2[_wgslsmith_index_u32(33254u, 13u)] | true), u_input.c.x)));
    let var_1 = func_2().zxy;
    return Struct_2(func_1(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.c.x, 4294967295u) >> (0u % 32u), 12u)]), arg_1, _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(max(global4[_wgslsmith_index_u32(global0.x, 27u)], u_input.b), _wgslsmith_add_i32(arg_1.b, -2147483647i)), -2147483647i, 2147483647i, arg_1.a.x), ~vec4<i32>(global4[_wgslsmith_index_u32(global0.x, 27u)], _wgslsmith_mod_i32(0i, u_input.b), _wgslsmith_clamp_i32(arg_1.b, arg_1.b, 1i), firstLeadingBit(global4[_wgslsmith_index_u32(var_0.a, 27u)]))), any(!select(vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.c.x, 13u)], global2[_wgslsmith_index_u32(var_0.a, 13u)], false), vec4<bool>(global2[_wgslsmith_index_u32(0u, 13u)], global2[_wgslsmith_index_u32(0u, 13u)], true, true), false)) || !global2[_wgslsmith_index_u32(var_0.a, 13u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<i32, 27>();
    let var_0 = global0.x;
    var var_1 = Struct_5(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(161f)))), func_1(Struct_5(Struct_2(Struct_1(vec2<i32>(-2147483647i, u_input.b), 2062i), Struct_1(vec2<i32>(global4[_wgslsmith_index_u32(1729u, 27u)], -1i), -19634i), vec4<i32>(30917i, 1i, global4[_wgslsmith_index_u32(38356u, 27u)], 0i), global2[_wgslsmith_index_u32(14994u, 13u)]), ~u_input.c.yw))), u_input.c.zz);
    let var_2 = Struct_4(_wgslsmith_mod_u32(1u, _wgslsmith_sub_u32(var_1.b.x, ~(~u_input.c.x))));
    let var_3 = !(!(!select(select(vec2<bool>(var_1.a.d, true), vec2<bool>(global2[_wgslsmith_index_u32(26441u, 13u)], global2[_wgslsmith_index_u32(4294967295u, 13u)]), false), !vec2<bool>(true, var_1.a.d), !vec2<bool>(global2[_wgslsmith_index_u32(94275u, 13u)], var_1.a.d))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.a, -(vec2<i32>(u_input.a.x, 1i) << (var_1.b % vec2<u32>(32u)))), vec2<i32>(-2147483647i, 7674i) << (func_3(-40877i, vec3<i32>(-5732i, -45844i, global4[_wgslsmith_index_u32(global0.x, 27u)]), -745f, var_1.b.x).yy % vec2<u32>(32u))), u_input.a.x << (1u % 32u), global0.x);
}

