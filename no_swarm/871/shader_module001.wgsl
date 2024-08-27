struct Struct_1 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
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

var<private> global0: array<vec2<bool>, 9> = array<vec2<bool>, 9>(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true));

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 13>;

var<private> global3: Struct_1;

var<private> global4: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(vec2<u32>(0u, 6860u), vec4<f32>(-1829f, -634f, 2161f, 154f), true), Struct_1(vec2<u32>(12306u, 1u), vec4<f32>(-267f, -1510f, 1605f, 744f), true), Struct_1(vec2<u32>(3746u, 46126u), vec4<f32>(-957f, -1424f, 1272f, 146f), false), Struct_1(vec2<u32>(15008u, 65151u), vec4<f32>(1710f, 1128f, 117f, -265f), false), Struct_1(vec2<u32>(4294967295u, 47054u), vec4<f32>(552f, -378f, 338f, 917f), false), Struct_1(vec2<u32>(1u, 21964u), vec4<f32>(-657f, 1005f, 711f, 1000f), false), Struct_1(vec2<u32>(0u, 1u), vec4<f32>(-192f, -807f, -730f, -139f), true), Struct_1(vec2<u32>(1u, 4294967295u), vec4<f32>(344f, -964f, -104f, 912f), true), Struct_1(vec2<u32>(82696u, 25820u), vec4<f32>(-2243f, -1298f, 1369f, -1523f), true), Struct_1(vec2<u32>(27945u, 8610u), vec4<f32>(-1221f, 999f, -455f, -708f), false), Struct_1(vec2<u32>(42922u, 80859u), vec4<f32>(498f, 471f, 609f, 1067f), false), Struct_1(vec2<u32>(1u, 1u), vec4<f32>(1000f, -1654f, -1279f, 1432f), false), Struct_1(vec2<u32>(42930u, 63974u), vec4<f32>(-379f, -2506f, 811f, 545f), true), Struct_1(vec2<u32>(1u, 11629u), vec4<f32>(-1000f, -1044f, 1000f, 715f), true), Struct_1(vec2<u32>(67559u, 4294967295u), vec4<f32>(737f, -1240f, -1775f, 245f), false), Struct_1(vec2<u32>(28529u, 4294967295u), vec4<f32>(985f, 643f, 1416f, -744f), true), Struct_1(vec2<u32>(1913u, 1u), vec4<f32>(-980f, 2455f, 952f, -1554f), true), Struct_1(vec2<u32>(63236u, 7886u), vec4<f32>(-935f, 1161f, 352f, 343f), false), Struct_1(vec2<u32>(114055u, 1u), vec4<f32>(-451f, 1764f, -569f, 1000f), true));

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: f32) -> Struct_1 {
    global2 = array<Struct_1, 13>();
    global4 = array<Struct_1, 19>();
    var var_0 = false;
    global4 = array<Struct_1, 19>();
    var_0 = any(global0[_wgslsmith_index_u32(2230u, 9u)]);
    return global4[_wgslsmith_index_u32(52887u, 19u)];
}

fn func_3(arg_0: vec3<i32>, arg_1: u32, arg_2: vec3<f32>) -> i32 {
    global4 = array<Struct_1, 19>();
    let var_0 = u_input.a;
    global2 = array<Struct_1, 13>();
    let var_1 = Struct_1(u_input.b, global3.b, !(!(global1.c && true)));
    var var_2 = global3.b.x < global1.b.x;
    return u_input.a;
}

fn func_1() -> Struct_1 {
    global0 = array<vec2<bool>, 9>();
    global2 = array<Struct_1, 13>();
    global1 = func_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global3.b.x))), -1000f)), global2[_wgslsmith_index_u32(global1.a.x << (_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_add_u32(32469u, u_input.c), firstTrailingBit(global3.a.x), global3.a.x, 77446u << (1u % 32u)), ~abs(vec4<u32>(global1.a.x, global3.a.x, 0u, 23318u))) % 32u), 13u)], ~vec4<u32>(1u, u_input.c, u_input.c, global1.a.x) | _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, global3.a.x, countOneBits(1u), 7301u), ~vec4<u32>(u_input.c, 1u, 2365u, 6491u)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-235f * global3.b.x), 634f)));
    var var_0 = vec3<i32>(_wgslsmith_mult_i32(u_input.a, max(_wgslsmith_div_i32(0i, func_3(vec3<i32>(25933i, u_input.a, u_input.a), global1.a.x, vec3<f32>(global1.b.x, global3.b.x, global3.b.x))), -1i)), -11591i, u_input.a);
    let var_1 = global4[_wgslsmith_index_u32(~(max(global1.a.x, _wgslsmith_mult_u32(select(2395u, global3.a.x, false), ~global1.a.x)) >> (u_input.c % 32u)), 19u)];
    return func_2(_wgslsmith_f_op_f32(-global3.b.x), global2[_wgslsmith_index_u32(33882u, 13u)], vec4<u32>(0u, 43861u, ~((93049u >> (var_1.a.x % 32u)) ^ global1.a.x), abs(global1.a.x)), _wgslsmith_f_op_f32(1135f - 462f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global4[_wgslsmith_index_u32(1u, 19u)];
    global3 = func_1();
    global1 = Struct_1(vec2<u32>(global1.a.x, u_input.b.x << (~16427u % 32u)), vec4<f32>(_wgslsmith_f_op_f32(-173f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(886f + var_0.b.x)))), _wgslsmith_f_op_f32(-global3.b.x), func_1().b.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.b.x - 1000f))))), !((1u != select(4294967295u, 13857u, true)) & all(!global0[_wgslsmith_index_u32(0u, 9u)])));
    let var_1 = global1.c;
    global4 = array<Struct_1, 19>();
    var var_2 = global2[_wgslsmith_index_u32(~global1.a.x, 13u)];
    let var_3 = -52369i;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_dot_vec2_u32(abs(global1.a), _wgslsmith_add_vec2_u32(func_1().a, max(global3.a, var_0.a))), select(~reverseBits(0u), _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 19448u, var_2.a.x, 55513u), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, 976u, var_0.a.x, var_0.a.x), vec4<u32>(global3.a.x, u_input.c, 61470u, global1.a.x))), true), 4294967295u, ~var_2.a.x >> (_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.b.x, global3.a.x), vec3<u32>(u_input.c, var_0.a.x, 94767u)), _wgslsmith_mult_u32(1u, 0u)) % 32u)));
}

