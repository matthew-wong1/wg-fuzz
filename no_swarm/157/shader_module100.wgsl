struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: vec3<bool>,
    d: f32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<u32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_2,
    c: vec4<bool>,
    d: Struct_3,
}

struct Struct_5 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 15> = array<vec4<bool>, 15>(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true));

var<private> global1: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(vec3<i32>(-24394i, -19598i, -46175i), 4294967295u, vec3<bool>(false, true, false), -106f, vec4<u32>(1u, 25175u, 4294967295u, 82079u)), Struct_1(vec3<i32>(1i, -1i, -12371i), 1u, vec3<bool>(true, true, true), 839f, vec4<u32>(0u, 4294967295u, 4294967295u, 10751u)), Struct_1(vec3<i32>(-51551i, 23044i, -1i), 0u, vec3<bool>(true, false, false), -885f, vec4<u32>(1u, 1u, 4294967295u, 4294967295u)), Struct_1(vec3<i32>(36896i, 2192i, 2147483647i), 0u, vec3<bool>(false, false, false), -851f, vec4<u32>(35584u, 1u, 4294967295u, 1u)), Struct_1(vec3<i32>(24923i, 1i, 2147483647i), 1u, vec3<bool>(false, true, false), -833f, vec4<u32>(5015u, 4294967295u, 81793u, 92901u)), Struct_1(vec3<i32>(-2506i, -10143i, 0i), 0u, vec3<bool>(true, true, false), -958f, vec4<u32>(1u, 28110u, 1u, 45727u)), Struct_1(vec3<i32>(-1i, -44947i, 1i), 4248u, vec3<bool>(false, true, false), -179f, vec4<u32>(21700u, 4294967295u, 33728u, 11698u)), Struct_1(vec3<i32>(i32(-2147483648), -1i, -13094i), 4500u, vec3<bool>(false, true, false), -218f, vec4<u32>(60063u, 28475u, 38610u, 12698u)), Struct_1(vec3<i32>(-19654i, 35179i, -25382i), 60856u, vec3<bool>(true, true, true), -1000f, vec4<u32>(56979u, 0u, 1u, 4294967295u)), Struct_1(vec3<i32>(-7333i, 1i, 41960i), 4294967295u, vec3<bool>(true, false, true), -1448f, vec4<u32>(1u, 4621u, 0u, 71833u)), Struct_1(vec3<i32>(-1i, -29960i, 1i), 52448u, vec3<bool>(false, true, false), -111f, vec4<u32>(0u, 61941u, 30855u, 43389u)), Struct_1(vec3<i32>(i32(-2147483648), -4174i, -1i), 4294967295u, vec3<bool>(false, true, true), 1187f, vec4<u32>(45275u, 0u, 14513u, 215u)), Struct_1(vec3<i32>(-31538i, i32(-2147483648), 1i), 1u, vec3<bool>(true, true, false), 355f, vec4<u32>(0u, 2365u, 1u, 4294967295u)), Struct_1(vec3<i32>(i32(-2147483648), i32(-2147483648), -43703i), 0u, vec3<bool>(true, true, false), 2445f, vec4<u32>(0u, 0u, 24630u, 1u)), Struct_1(vec3<i32>(2147483647i, i32(-2147483648), -33551i), 1u, vec3<bool>(false, false, false), 193f, vec4<u32>(0u, 41951u, 10515u, 1u)), Struct_1(vec3<i32>(1i, 15608i, 30135i), 12846u, vec3<bool>(false, false, true), -682f, vec4<u32>(11070u, 81104u, 4294967295u, 4294967295u)), Struct_1(vec3<i32>(1i, 38755i, 8005i), 22328u, vec3<bool>(false, true, false), -1243f, vec4<u32>(4294967295u, 48982u, 30727u, 4294967295u)), Struct_1(vec3<i32>(-8556i, i32(-2147483648), 2147483647i), 48990u, vec3<bool>(true, true, true), 341f, vec4<u32>(31247u, 96951u, 72169u, 0u)), Struct_1(vec3<i32>(1i, -35585i, 2147483647i), 0u, vec3<bool>(true, true, false), -784f, vec4<u32>(9458u, 4294967295u, 3048u, 78521u)), Struct_1(vec3<i32>(-35463i, 1i, i32(-2147483648)), 0u, vec3<bool>(false, true, false), 848f, vec4<u32>(3358u, 0u, 4294967295u, 12494u)));

var<private> global2: array<bool, 16> = array<bool, 16>(true, true, true, true, false, false, true, true, true, true, false, false, true, false, true, true);

var<private> global3: array<vec2<u32>, 9> = array<vec2<u32>, 9>(vec2<u32>(38928u, 32654u), vec2<u32>(285u, 74520u), vec2<u32>(52863u, 4294967295u), vec2<u32>(64377u, 0u), vec2<u32>(1u, 29024u), vec2<u32>(1u, 8159u), vec2<u32>(0u, 25790u), vec2<u32>(4294967295u, 12595u), vec2<u32>(76468u, 0u));

var<private> global4: u32 = 8587u;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_5, arg_1: vec4<bool>, arg_2: vec2<bool>, arg_3: Struct_4) -> u32 {
    var var_0 = Struct_1(arg_3.b.c.a, ~arg_0.a.x, vec3<bool>(arg_2.x, select(!all(global0[_wgslsmith_index_u32(0u, 15u)]), select(any(arg_1.wwx), false, true | arg_2.x), !global2[_wgslsmith_index_u32(44071u, 16u)]), arg_1.x), _wgslsmith_f_op_f32(arg_3.d.a.c.d * 1140f), ~(vec4<u32>(arg_3.b.b.x, 12584u & arg_3.b.c.b, ~59554u, arg_0.a.x) | _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, arg_3.d.a.b.x, 7317u, 5020u), arg_3.d.a.d.e)));
    let var_1 = arg_0;
    let var_2 = (arg_0.a ^ _wgslsmith_div_vec4_u32(abs(~arg_0.a), var_1.a)) ^ (arg_3.d.a.c.e & var_0.e);
    var var_3 = _wgslsmith_mod_i32(firstTrailingBit(-31769i) & (i32(-1i) * -(arg_3.b.c.a.x | arg_3.d.a.d.a.x)), 0i);
    var var_4 = max(arg_3.d.a.c.a.x, arg_3.d.a.d.a.x);
    return arg_0.a.x;
}

fn func_2(arg_0: vec2<f32>, arg_1: i32, arg_2: Struct_3) -> f32 {
    let var_0 = arg_2.a;
    let var_1 = !arg_2.a.d.c.x;
    let var_2 = vec3<u32>(func_3(Struct_5(~vec4<u32>(61500u, 51971u, u_input.a, 6795u) | var_0.c.e), vec4<bool>(false, -151f == _wgslsmith_f_op_f32(-arg_0.x), true, true), var_0.c.c.zy, Struct_4(!arg_2.a.c.c.yz, var_0, vec4<bool>(false, var_0.d.c.x, true, var_0.d.c.x || false), Struct_3(arg_2.a))), 0u, u_input.a & (_wgslsmith_mult_u32(_wgslsmith_mult_u32(var_0.b.x, 5918u), _wgslsmith_add_u32(77760u, var_0.c.b)) ^ var_0.c.e.x));
    var var_3 = (vec4<i32>(-1i, -9635i, _wgslsmith_mult_i32(arg_1, 0i) & arg_1, 0i) ^ ~firstLeadingBit(vec4<i32>(0i, -2147483647i, arg_1, arg_1))) | -vec4<i32>(select(var_0.c.a.x ^ arg_2.a.d.a.x, arg_2.a.c.a.x, any(var_0.d.c.xx)), -48524i, _wgslsmith_dot_vec3_i32(var_0.c.a >> (arg_2.a.d.e.zxx % vec3<u32>(32u)), arg_2.a.d.a), ~arg_2.a.c.a.x);
    let var_4 = _wgslsmith_div_vec2_i32(countOneBits(reverseBits(countOneBits(arg_2.a.c.a.zx))), var_0.d.a.zy);
    return arg_2.a.d.d;
}

fn func_1() -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-617f + 697f))) - 675f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec2<f32>(1016f, 2094f), 1i, Struct_3(Struct_2(vec4<f32>(512f, -164f, -888f, 1941f), vec2<u32>(u_input.a, 28876u), Struct_1(vec3<i32>(-27796i, 25941i, 1i), u_input.a, vec3<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 16u)], global2[_wgslsmith_index_u32(1u, 16u)]), -102f, vec4<u32>(0u, u_input.a, 93561u, 1u)), Struct_1(vec3<i32>(-24240i, -18504i, 0i), 27157u, vec3<bool>(false, false, false), 111f, vec4<u32>(0u, u_input.a, 27642u, u_input.a))))))) + 772f)));
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-275f + _wgslsmith_f_op_f32(1764f - -1633f)))));
    let var_2 = vec4<i32>(1i, ~(-(~firstTrailingBit(5046i))), _wgslsmith_add_i32(countOneBits(-53621i), countOneBits(countOneBits(~6578i))), firstLeadingBit(-(~(~3708i))));
    let var_3 = global0[_wgslsmith_index_u32(17562u, 15u)];
    var var_4 = -var_2;
    return StorageBuffer(-(~select(var_2.yzy, ~vec3<i32>(46190i, 7052i, -1i), !var_3.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

