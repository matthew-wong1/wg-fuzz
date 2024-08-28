struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(0u), Struct_1(4294967295u), Struct_1(0u), Struct_1(22832u), Struct_1(31772u), Struct_1(4294967295u), Struct_1(0u), Struct_1(1u), Struct_1(1u), Struct_1(21889u), Struct_1(15395u), Struct_1(4294967295u));

var<private> global1: array<Struct_2, 22>;

var<private> global2: array<f32, 6> = array<f32, 6>(-591f, -625f, -566f, 1500f, 783f, -373f);

var<private> global3: Struct_1 = Struct_1(34576u);

var<private> global4: array<Struct_2, 27> = array<Struct_2, 27>(Struct_2(Struct_1(66691u), Struct_1(4294967295u)), Struct_2(Struct_1(26160u), Struct_1(2520u)), Struct_2(Struct_1(11360u), Struct_1(1u)), Struct_2(Struct_1(1u), Struct_1(37715u)), Struct_2(Struct_1(42408u), Struct_1(4294967295u)), Struct_2(Struct_1(1u), Struct_1(1u)), Struct_2(Struct_1(5549u), Struct_1(18010u)), Struct_2(Struct_1(73912u), Struct_1(0u)), Struct_2(Struct_1(1u), Struct_1(0u)), Struct_2(Struct_1(0u), Struct_1(4294967295u)), Struct_2(Struct_1(4294967295u), Struct_1(27114u)), Struct_2(Struct_1(0u), Struct_1(41915u)), Struct_2(Struct_1(14203u), Struct_1(4294967295u)), Struct_2(Struct_1(649u), Struct_1(4294967295u)), Struct_2(Struct_1(0u), Struct_1(1u)), Struct_2(Struct_1(1u), Struct_1(0u)), Struct_2(Struct_1(4294967295u), Struct_1(5205u)), Struct_2(Struct_1(16330u), Struct_1(0u)), Struct_2(Struct_1(4294967295u), Struct_1(12871u)), Struct_2(Struct_1(0u), Struct_1(27178u)), Struct_2(Struct_1(15903u), Struct_1(20423u)), Struct_2(Struct_1(4294967295u), Struct_1(1u)), Struct_2(Struct_1(4294967295u), Struct_1(26993u)), Struct_2(Struct_1(0u), Struct_1(41972u)), Struct_2(Struct_1(4294967295u), Struct_1(0u)), Struct_2(Struct_1(1u), Struct_1(1u)), Struct_2(Struct_1(20590u), Struct_1(17923u)));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: u32) -> u32 {
    let var_0 = global2[_wgslsmith_index_u32(20506u, 6u)];
    var var_1 = ~abs(vec3<i32>(u_input.c.x, -1i | u_input.a, -56773i ^ u_input.c.x)) & (select(vec3<i32>(21399i, select(u_input.c.x, -21833i, false), u_input.a | u_input.c.x), _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, u_input.c.x, -2147483647i) >> (vec3<u32>(global3.a, global3.a, 1u) % vec3<u32>(32u)), -vec3<i32>(u_input.b, u_input.b, u_input.a), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c.x, -14813i, u_input.c.x), vec3<i32>(1i, -19047i, -2322i))), true) ^ -vec3<i32>(~u_input.c.x, firstTrailingBit(u_input.a), -u_input.c.x));
    let var_2 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(903f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + _wgslsmith_f_op_f32(233f - global2[_wgslsmith_index_u32(global3.a, 6u)])))), arg_0), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1531f, global2[_wgslsmith_index_u32(0u, 6u)]), vec2<f32>(-120f, -358f), vec2<bool>(false, true)))) - vec2<f32>(_wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(global3.a, 6u)])), _wgslsmith_f_op_f32(-200f + 1252f))), vec2<f32>(arg_0, _wgslsmith_f_op_f32(-1255f + _wgslsmith_f_op_f32(-arg_0))))), (var_1.x << (34866u % 32u)) > firstTrailingBit(abs(-443i) & var_1.x)));
    let var_3 = var_1.x;
    var var_4 = global0[_wgslsmith_index_u32(~14443u ^ countOneBits(~_wgslsmith_sub_u32(select(24752u, global3.a, true), ~arg_1)), 12u)];
    return select(abs(0u), var_4.a, any(vec3<bool>(!all(vec3<bool>(false, true, false)), true, true)));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<f32>) -> Struct_1 {
    return Struct_1(~func_3(global2[_wgslsmith_index_u32(~max(global3.a, 0u), 6u)], _wgslsmith_add_u32(~global3.a, countOneBits(global3.a))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>) -> Struct_1 {
    let var_0 = true;
    var var_1 = _wgslsmith_div_vec4_u32(vec4<u32>(2745u, _wgslsmith_dot_vec3_u32(abs(arg_1.yzx), vec3<u32>(arg_0.a, 77335u, arg_1.x)) >> (arg_0.a % 32u), 0u ^ func_3(global2[_wgslsmith_index_u32(~arg_1.x, 6u)], arg_1.x), ~1u), countOneBits(vec4<u32>(global3.a, firstLeadingBit(global3.a), ~38603u, global3.a)));
    global4 = array<Struct_2, 27>();
    let var_2 = global1[_wgslsmith_index_u32(var_1.x, 22u)];
    var var_3 = vec4<bool>(var_0, var_0, !(~23675u != global3.a), false != var_0);
    return func_2(select(!var_3.yz, vec2<bool>(false, true), false), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(1u, 6u)])), _wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(4294967295u, 6u)])), global2[_wgslsmith_index_u32(arg_0.a, 6u)]) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(var_2.a.a, 6u)], -1121f, global2[_wgslsmith_index_u32(var_2.b.a, 6u)])), _wgslsmith_f_op_vec3_f32(-vec3<f32>(476f, global2[_wgslsmith_index_u32(var_2.b.a, 6u)], global2[_wgslsmith_index_u32(arg_1.x, 6u)])))))));
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: bool) -> Struct_2 {
    let var_0 = Struct_2(global0[_wgslsmith_index_u32(global3.a ^ ~(~reverseBits(global3.a)), 12u)], Struct_1(4294967295u));
    global0 = array<Struct_1, 12>();
    global3 = func_4(func_2(vec2<bool>(arg_2, true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(var_0.a.a, 6u)], arg_1, -648f)))), ~vec4<u32>(var_0.b.a, 36603u, global3.a >> ((1u | global3.a) % 32u), ~(~var_0.b.a)));
    let var_1 = Struct_2(global0[_wgslsmith_index_u32(58533u, 12u)], global0[_wgslsmith_index_u32(var_0.a.a, 12u)]);
    let var_2 = var_0;
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1054f;
    let var_1 = Struct_1(6753u);
    global3 = Struct_1(var_1.a);
    let var_2 = func_1(true, -240f, all(vec3<bool>(false, true, true)));
    global4 = array<Struct_2, 27>();
    let var_3 = !vec2<bool>((all(vec3<bool>(true, true, false)) & any(vec2<bool>(true, false))) | true, true || all(vec2<bool>(true, true)));
    global4 = array<Struct_2, 27>();
    let var_4 = Struct_2(Struct_1(reverseBits(15942u)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32((~vec4<u32>(4294967295u, 20324u, 0u, var_2.b.a) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(132486u, 4294967295u, 19505u, 9845u), vec4<u32>(31692u, 32u, 0u, var_1.a))) << (~vec4<u32>(7416u, global3.a, 33136u, 16114u) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(global3.a, global3.a, var_1.a & var_2.a.a, 74849u), select(~vec4<u32>(var_1.a, 0u, 8760u, 7692u), _wgslsmith_add_vec4_u32(vec4<u32>(global3.a, 4294967295u, 1u, 0u), vec4<u32>(var_2.b.a, global3.a, 85875u, 0u)), false), _wgslsmith_div_vec4_u32(~vec4<u32>(1u, 26350u, 0u, 0u), select(vec4<u32>(1u, var_1.a, 9093u, var_2.a.a), vec4<u32>(4294967295u, 832u, 1u, 1u), true)))), 12u)]);
    var var_5 = Struct_2(Struct_1(_wgslsmith_add_u32(var_1.a, ~func_2(var_3, vec3<f32>(-156f, 169f, global2[_wgslsmith_index_u32(57041u, 6u)])).a)), func_4(func_1(all(!vec3<bool>(true, var_3.x, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(781f))), var_3.x).a, firstTrailingBit(abs(~vec4<u32>(35998u, var_2.a.a, 5921u, 1u)))));
    let x = u_input.a;
    s_output = StorageBuffer(-138f, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 6u)]), reverseBits(-reverseBits(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, u_input.c.x, u_input.b, u_input.a), vec4<i32>(u_input.a, u_input.c.x, -2147483647i, -1i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-223f * global2[_wgslsmith_index_u32(~(~53459u), 6u)])));
}

