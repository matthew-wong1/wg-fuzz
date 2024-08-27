struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec3<u32>,
    d: i32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(403f, vec4<bool>(false, false, false, true), vec3<u32>(42173u, 31459u, 20308u), 40762i, vec3<f32>(2718f, -1232f, 794f)), Struct_1(-694f, vec4<bool>(true, false, true, true), vec3<u32>(0u, 17070u, 4294967295u), 0i, vec3<f32>(1467f, -133f, 456f)), Struct_1(-1000f, vec4<bool>(false, true, true, true), vec3<u32>(4294967295u, 0u, 25136u), 8316i, vec3<f32>(253f, 551f, -875f)), Struct_1(268f, vec4<bool>(false, false, false, true), vec3<u32>(74923u, 4294967295u, 16322u), i32(-2147483648), vec3<f32>(1794f, -907f, -351f)), Struct_1(-1000f, vec4<bool>(false, true, true, false), vec3<u32>(1u, 0u, 40520u), 1i, vec3<f32>(-697f, 1667f, 372f)), Struct_1(1144f, vec4<bool>(true, false, true, true), vec3<u32>(4294967295u, 0u, 84405u), 0i, vec3<f32>(-1657f, -1010f, 516f)), Struct_1(236f, vec4<bool>(true, false, false, false), vec3<u32>(81442u, 4294967295u, 1u), 0i, vec3<f32>(213f, -1913f, -1008f)), Struct_1(613f, vec4<bool>(false, true, false, true), vec3<u32>(1u, 0u, 72657u), -27347i, vec3<f32>(-792f, -1457f, 304f)), Struct_1(-898f, vec4<bool>(true, true, false, false), vec3<u32>(23455u, 0u, 4294967295u), -17001i, vec3<f32>(-1771f, 1182f, -221f)), Struct_1(1316f, vec4<bool>(true, false, true, false), vec3<u32>(4294967295u, 0u, 1u), 1i, vec3<f32>(2436f, -718f, 1234f)), Struct_1(-930f, vec4<bool>(false, false, false, false), vec3<u32>(3761u, 1u, 4294967295u), 1i, vec3<f32>(-254f, -866f, 1082f)), Struct_1(693f, vec4<bool>(true, false, false, false), vec3<u32>(4294967295u, 4728u, 4294967295u), 27368i, vec3<f32>(-1000f, -835f, -176f)), Struct_1(-736f, vec4<bool>(false, false, false, true), vec3<u32>(21463u, 134u, 1u), -35792i, vec3<f32>(-265f, -990f, -168f)), Struct_1(558f, vec4<bool>(false, true, false, false), vec3<u32>(0u, 1u, 1u), 1i, vec3<f32>(1405f, 964f, -760f)), Struct_1(-267f, vec4<bool>(true, true, false, false), vec3<u32>(1u, 0u, 13451u), -12100i, vec3<f32>(-664f, -1425f, -205f)));

var<private> global1: f32;

var<private> global2: array<i32, 18>;

var<private> global3: u32 = 1u;

var<private> global4: Struct_3 = Struct_3(Struct_2(Struct_1(424f, vec4<bool>(true, true, true, false), vec3<u32>(71543u, 1u, 22490u), 1i, vec3<f32>(525f, -1065f, 575f)), 0u), Struct_1(477f, vec4<bool>(true, true, true, false), vec3<u32>(7507u, 1u, 21264u), 29247i, vec3<f32>(478f, 667f, -1093f)), Struct_2(Struct_1(1000f, vec4<bool>(true, true, true, true), vec3<u32>(19145u, 8426u, 4294967295u), i32(-2147483648), vec3<f32>(161f, 1684f, -726f)), 1u), vec4<bool>(true, true, true, true));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: Struct_1) -> i32 {
    global1 = global4.a.a.e.x;
    global0 = array<Struct_1, 15>();
    var var_0 = arg_1.c.a.d;
    global0 = array<Struct_1, 15>();
    var var_1 = ~(83633u << (max(arg_1.a.a.c.x, abs(_wgslsmith_dot_vec4_u32(vec4<u32>(72969u, 0u, arg_1.b.c.x, 51864u), vec4<u32>(13897u, global4.b.c.x, global4.c.b, global4.a.b)))) % 32u));
    return 0i;
}

fn func_2(arg_0: vec3<i32>) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.b.e.x)))) * -2582f);
    var var_1 = false;
    let var_2 = arg_0;
    let var_3 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1142f * global4.c.a.e.x))))), vec4<bool>(true, select(any(global4.b.b.yyy), true, false), true, any(vec4<bool>(all(global4.c.a.b), true, any(global4.d.wxx), true))), global4.b.c, -2147483647i, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(101f, global4.a.a.e.x, 174f), global4.b.e) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-166f, 544f, global4.a.a.a) + global4.a.a.e)), _wgslsmith_f_op_vec3_f32(-global4.c.a.e)) + vec3<f32>(_wgslsmith_f_op_f32(-global4.c.a.e.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1351f) * _wgslsmith_f_op_f32(step(global4.c.a.a, -121f))), _wgslsmith_div_f32(-940f, _wgslsmith_div_f32(101f, global4.a.a.e.x)))));
    global2 = array<i32, 18>();
    return Struct_3(Struct_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_3.e.x, var_3.a)), -1008f), select(vec4<bool>(false, false, var_3.b.x, true), vec4<bool>(global4.b.b.x, global4.c.a.b.x, false, true), !vec4<bool>(true, var_3.b.x, true, global4.a.a.b.x)), abs(vec3<u32>(0u, 40534u, u_input.a) | vec3<u32>(0u, u_input.a, 64086u)), u_input.b, vec3<f32>(_wgslsmith_div_f32(global4.b.e.x, global4.c.a.e.x), global4.b.a, var_3.a)), ~_wgslsmith_add_u32(0u, 13483u)), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1330f, global4.a.a.e.x)) * _wgslsmith_f_op_f32(sign(global4.a.a.a))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1154f, -1159f) * var_3.a)), select(select(var_3.b, select(global4.c.a.b, var_3.b, global4.c.a.b), global4.c.a.b.x), !var_3.b, var_3.b.x), var_3.c, _wgslsmith_add_i32(u_input.b, func_3(_wgslsmith_f_op_f32(sign(var_3.a)), Struct_3(global4.a, global4.b, Struct_2(global4.b, global4.a.a.c.x), vec4<bool>(true, false, var_3.b.x, var_3.b.x)), global0[_wgslsmith_index_u32(abs(var_3.c.x), 15u)])), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(595f, -2316f, -240f)) + _wgslsmith_f_op_vec3_f32(global4.c.a.e + var_3.e))))), global4.c, var_3.b);
}

fn func_1() -> Struct_1 {
    var var_0 = any(vec2<bool>(global4.b.b.x, any(global4.d)));
    let var_1 = !(!global4.b.b.x);
    global2 = array<i32, 18>();
    global2 = array<i32, 18>();
    global4 = func_2(vec3<i32>(-global4.a.a.d, global2[_wgslsmith_index_u32((abs(16940u) ^ _wgslsmith_mod_u32(global4.c.a.c.x, 1u)) >> ((~0u & ~u_input.a) % 32u), 18u)], ~(-reverseBits(u_input.b))));
    return global4.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_1(), 0u);
    let var_1 = ((_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-21892i, var_0.a.d, global4.a.a.d), vec3<i32>(var_0.a.d, global2[_wgslsmith_index_u32(global4.a.b, 18u)], -1i)), _wgslsmith_mod_vec3_i32(vec3<i32>(global4.a.a.d, -23145i, 13312i), vec3<i32>(687i, 70036i, 1i))) & (abs(vec3<i32>(9747i, 2147483647i, -72724i)) ^ -vec3<i32>(var_0.a.d, global4.a.a.d, global2[_wgslsmith_index_u32(u_input.a, 18u)]))) >> (vec3<u32>(4294967295u, _wgslsmith_mult_u32(~var_0.a.c.x, 48913u), (4294967295u >> (u_input.a % 32u)) | 25682u) % vec3<u32>(32u))) | ~select(-(~vec3<i32>(-43663i, -39123i, var_0.a.d)), abs(firstLeadingBit(vec3<i32>(var_0.a.d, global4.a.a.d, 19627i))), false);
    global1 = 2235f;
    var var_2 = func_3(-430f, Struct_3(Struct_2(var_0.a, 0u), global0[_wgslsmith_index_u32(global4.a.b, 15u)], Struct_2(Struct_1(var_0.a.e.x, func_1().b, _wgslsmith_mult_vec3_u32(var_0.a.c, vec3<u32>(u_input.a, 0u, var_0.b)), _wgslsmith_div_i32(global2[_wgslsmith_index_u32(4294967295u, 18u)], global4.b.d), _wgslsmith_f_op_vec3_f32(step(var_0.a.e, var_0.a.e))), ~_wgslsmith_div_u32(18343u, global4.a.a.c.x)), vec4<bool>(true, true, true, true)), global0[_wgslsmith_index_u32(var_0.a.c.x, 15u)]);
    global0 = array<Struct_1, 15>();
    let var_3 = func_2(_wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(21997i, 1i), var_1.x, 0i), var_1, vec3<i32>(-1i, 1i, -1i)), countOneBits(var_1))).a.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(var_3.c.x, var_3.c.x, 0u, ~(~4294967295u & ~u_input.a)));
}

