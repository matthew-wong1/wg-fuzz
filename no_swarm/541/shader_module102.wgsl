struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: u32,
    c: vec3<u32>,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<u32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_1(true, 949f), Struct_2(vec3<bool>(false, false, false), 1u, vec3<u32>(54612u, 47165u, 56471u), Struct_1(false, -1000f), vec4<bool>(false, false, true, false)), vec2<u32>(29792u, 39667u));

var<private> global1: array<Struct_4, 8> = array<Struct_4, 8>(Struct_4(Struct_1(false, -1178f), Struct_2(vec3<bool>(true, true, true), 1u, vec3<u32>(39816u, 0u, 5925u), Struct_1(true, -652f), vec4<bool>(false, false, true, false)), vec2<u32>(0u, 3747u)), Struct_4(Struct_1(true, -480f), Struct_2(vec3<bool>(false, false, true), 9175u, vec3<u32>(46661u, 0u, 1u), Struct_1(true, -515f), vec4<bool>(false, true, true, false)), vec2<u32>(18402u, 38524u)), Struct_4(Struct_1(false, 170f), Struct_2(vec3<bool>(true, true, false), 51740u, vec3<u32>(1u, 0u, 4777u), Struct_1(true, 318f), vec4<bool>(true, false, false, true)), vec2<u32>(71709u, 0u)), Struct_4(Struct_1(true, -1517f), Struct_2(vec3<bool>(true, false, true), 19795u, vec3<u32>(2498u, 45292u, 1u), Struct_1(true, 1868f), vec4<bool>(false, true, true, false)), vec2<u32>(0u, 0u)), Struct_4(Struct_1(true, 148f), Struct_2(vec3<bool>(true, true, false), 5942u, vec3<u32>(0u, 29227u, 11412u), Struct_1(true, -168f), vec4<bool>(false, true, true, false)), vec2<u32>(4294967295u, 65764u)), Struct_4(Struct_1(true, -1000f), Struct_2(vec3<bool>(false, false, false), 4294967295u, vec3<u32>(1u, 0u, 1u), Struct_1(false, -1614f), vec4<bool>(false, false, true, false)), vec2<u32>(1u, 4294967295u)), Struct_4(Struct_1(true, -955f), Struct_2(vec3<bool>(true, false, false), 54900u, vec3<u32>(5257u, 85645u, 0u), Struct_1(true, -149f), vec4<bool>(false, false, true, false)), vec2<u32>(1u, 4294967295u)), Struct_4(Struct_1(true, 103f), Struct_2(vec3<bool>(false, false, false), 29861u, vec3<u32>(1u, 0u, 0u), Struct_1(false, -573f), vec4<bool>(false, true, false, false)), vec2<u32>(4294967295u, 14518u)));

var<private> global2: i32;

var<private> global3: array<Struct_4, 27>;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_2() -> Struct_1 {
    global3 = array<Struct_4, 27>();
    global2 = -42325i;
    global0 = global3[_wgslsmith_index_u32(reverseBits(global0.c.x), 27u)];
    var var_0 = Struct_3(~(~global0.b.c));
    var var_1 = Struct_4(global0.a, Struct_2(global0.b.e.xww, _wgslsmith_add_u32(1u, global0.b.b), min(vec3<u32>(~global0.b.c.x, 1u >> (0u % 32u), countOneBits(0u)), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, u_input.a, global0.c.x), vec3<u32>(var_0.a.x, var_0.a.x, u_input.a))), Struct_1(any(select(global0.b.a.yx, vec2<bool>(global0.a.a, global0.a.a), global0.b.a.yy)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.b * global0.b.d.b) + global0.b.d.b)), vec4<bool>(true, true, (global0.b.d.a & true) & (var_0.a.x == u_input.a), false)), ~abs(~vec2<u32>(global0.c.x, global0.c.x)));
    return Struct_1(global0.b.e.x, _wgslsmith_f_op_f32(min(var_1.b.d.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.a.b)) - 565f))));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: vec4<bool>) -> bool {
    let var_0 = ~(vec3<i32>(-1i) * -vec3<i32>(1i, 59557i, 58990i));
    global3 = array<Struct_4, 27>();
    let var_1 = _wgslsmith_mult_i32(_wgslsmith_mult_i32(_wgslsmith_mult_i32(199i, countOneBits(-2142i)), _wgslsmith_clamp_i32(-firstTrailingBit(-1i), _wgslsmith_dot_vec3_i32(~var_0, var_0 << (vec3<u32>(4294967295u, 34367u, 0u) % vec3<u32>(32u))), var_0.x)), abs(2147483647i));
    global0 = global1[_wgslsmith_index_u32(1u, 8u)];
    var var_2 = global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(~arg_1, u_input.a), 27u)];
    return false;
}

fn func_1() -> u32 {
    let var_0 = !vec3<bool>(true, !func_3(func_2(), 11383u, vec4<bool>(global0.b.d.a, global0.a.a, true, global0.b.d.a)), global0.a.a);
    global1 = array<Struct_4, 8>();
    let var_1 = -1256f;
    global3 = array<Struct_4, 27>();
    var var_2 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1835f + 1000f), _wgslsmith_f_op_f32(-global0.a.b)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, 865f)))) - vec2<f32>(var_1, -1600f)))));
    return abs(1269u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1() >> (global0.b.c.x % 32u);
    let var_1 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1010f, _wgslsmith_f_op_f32(min(-973f, -691f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b.d.b, _wgslsmith_f_op_f32(global0.a.b + global0.b.d.b))))));
    global2 = i32(-1i) * -(~_wgslsmith_mod_i32(i32(-1i) * -21309i, 4765i));
    var var_2 = Struct_3(~(~(~vec3<u32>(u_input.a, global0.b.c.x, 15922u))) >> (global0.b.c % vec3<u32>(32u)));
    var_0 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1786f), var_1.x), _wgslsmith_dot_vec3_u32(select(_wgslsmith_div_vec3_u32(vec3<u32>(global0.b.b, 43962u, 0u), ~var_2.a), ~vec3<u32>(32648u, 50140u, 0u), vec3<bool>(true, u_input.a >= var_2.a.x, global0.a.a && false)), vec3<u32>(66259u, 1u, 33986u)), abs(vec3<u32>(abs(u_input.a >> (var_2.a.x % 32u)), ~0u, 4294967295u)), abs(u_input.a), 0i);
}

