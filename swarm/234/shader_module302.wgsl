struct Struct_1 {
    a: vec3<u32>,
    b: vec2<u32>,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: vec3<i32>,
}

struct Struct_5 {
    a: vec4<u32>,
    b: u32,
    c: Struct_4,
    d: Struct_4,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29>;

var<private> global1: array<i32, 30>;

var<private> global2: Struct_5 = Struct_5(vec4<u32>(1u, 9265u, 4294967295u, 27713u), 1u, Struct_4(Struct_3(Struct_2(Struct_1(vec3<u32>(1u, 0u, 25688u), vec2<u32>(9112u, 91645u), true, -5104i), 42980u)), Struct_1(vec3<u32>(42634u, 1u, 14462u), vec2<u32>(3000u, 1u), false, 1i), 931f, Struct_1(vec3<u32>(0u, 34527u, 30877u), vec2<u32>(61160u, 0u), false, i32(-2147483648)), vec3<i32>(2147483647i, i32(-2147483648), 1i)), Struct_4(Struct_3(Struct_2(Struct_1(vec3<u32>(55355u, 25964u, 39472u), vec2<u32>(4294967295u, 61590u), false, 1i), 41335u)), Struct_1(vec3<u32>(42692u, 0u, 0u), vec2<u32>(34219u, 13078u), true, -2857i), 991f, Struct_1(vec3<u32>(0u, 1u, 1u), vec2<u32>(1u, 13753u), false, -19876i), vec3<i32>(-42255i, 8854i, -35625i)), Struct_2(Struct_1(vec3<u32>(27268u, 37577u, 0u), vec2<u32>(18694u, 62358u), true, 0i), 0u));

var<private> global3: Struct_3;

var<private> global4: array<vec4<bool>, 17>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: i32) -> Struct_1 {
    return global2.d.d;
}

fn func_3() -> u32 {
    let var_0 = global2.c.a.a;
    let var_1 = Struct_2(Struct_1(max(func_1(countOneBits(global3.a.a.d)).a, ~vec3<u32>(var_0.b, global3.a.a.a.x, 17705u)), global2.a.zx, _wgslsmith_f_op_f32(select(-1130f, _wgslsmith_f_op_f32(floor(global2.d.c)), true)) <= global2.d.c, select(~global3.a.a.d, min(var_0.a.d, 1i), func_1(global1[_wgslsmith_index_u32(1696u, 30u)]).c) & 1i), _wgslsmith_mult_u32(global2.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.d.x, ~76508u), u_input.d.yw)));
    let var_2 = global2.c.a.a.a.b;
    let var_3 = var_1.a.c;
    global1 = array<i32, 30>();
    return reverseBits(~_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(global2.e.a.a.zz, vec2<u32>(global3.a.a.b.x, 13121u)), var_0.a.b.x, 4294967295u) | ~(~var_1.a.a.x));
}

fn func_2() -> Struct_3 {
    var var_0 = vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_add_i32(~global3.a.a.d, -2147483647i), _wgslsmith_mult_i32(global1[_wgslsmith_index_u32(0u, 30u)], 2147483647i)), -25401i);
    var var_1 = global3.a.b;
    let var_2 = global2.d.a.a;
    let var_3 = ~global2.e.a.a;
    let var_4 = func_3();
    return global2.d.a;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_3) -> vec3<bool> {
    global4 = array<vec4<bool>, 17>();
    var var_0 = func_2();
    global4 = array<vec4<bool>, 17>();
    return !select(!vec3<bool>(true, global2.c.a.a.a.c, global3.a.a.c), !select(vec3<bool>(false, false, false), select(vec3<bool>(false, false, false), vec3<bool>(global2.d.d.c, global2.c.a.a.a.c, global3.a.a.c), vec3<bool>(false, false, arg_2.a.a.c)), select(vec3<bool>(true, var_0.a.a.c, true), vec3<bool>(arg_1.c, arg_0.c, true), vec3<bool>(arg_1.c, false, global3.a.a.c))), global2.c.a.a.a.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(global2.d.a.a.a, func_1(-(u_input.c.x | global3.a.a.d) ^ -31209i), func_2());
    let var_1 = i32(-1i) * -49331i;
    global3 = func_2();
    let var_2 = global1[_wgslsmith_index_u32(47783u, 30u)];
    let var_3 = _wgslsmith_div_u32(~abs(14025u), 49735u);
    var var_4 = Struct_5(global2.a, ~_wgslsmith_mod_u32(firstTrailingBit(~u_input.a), 0u), Struct_4(Struct_3(global3.a), Struct_1(global2.d.d.a, reverseBits(vec2<u32>(global2.e.b, 49550u)), all(select(vec4<bool>(false, global2.c.a.a.a.c, var_0.x, false), vec4<bool>(global3.a.a.c, false, global2.d.d.c, true), true)), ~(~global2.e.a.d)), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(462f, 224f))), global3.a.a, firstTrailingBit(u_input.c.xxy)), Struct_4(Struct_3(Struct_2(Struct_1(vec3<u32>(var_3, 1u, u_input.a), vec2<u32>(var_3, 42553u), var_0.x, -34647i), ~var_3)), func_1((global1[_wgslsmith_index_u32(u_input.e.x, 30u)] | 0i) | ~global3.a.a.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.d.c) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global2.d.c)) - _wgslsmith_f_op_f32(543f + 260f))), global3.a.a, -global2.c.e & max(u_input.c.zzw, u_input.c.wxx)), global2.e);
    var var_5 = -28149i;
    var var_6 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(~select(var_4.c.e, ~_wgslsmith_clamp_vec3_i32(u_input.c.zwy, vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 30u)], var_1, -2147483647i), vec3<i32>(var_1, -1i, 14035i)), all(func_4(Struct_1(vec3<u32>(var_4.e.a.a.x, global3.a.b, var_4.d.a.a.b), u_input.d.zx, global3.a.a.c, u_input.b), Struct_1(var_4.d.d.a, u_input.d.xx, false, global2.c.b.d), var_4.c.a).yz)), 1000f, _wgslsmith_f_op_f32(f32(-1f) * -1887f));
}

