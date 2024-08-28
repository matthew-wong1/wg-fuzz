struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(vec3<bool>(false, true, true), true, vec3<u32>(22458u, 4279u, 27291u)), Struct_1(vec3<bool>(true, true, true), true, vec3<u32>(5715u, 1u, 1u)), Struct_1(vec3<bool>(true, false, false), false, vec3<u32>(4294967295u, 45250u, 42456u)), Struct_1(vec3<bool>(false, false, false), true, vec3<u32>(0u, 0u, 2320u)), Struct_1(vec3<bool>(false, true, false), true, vec3<u32>(1u, 1u, 13047u)), Struct_1(vec3<bool>(false, false, false), true, vec3<u32>(4294967295u, 1u, 35833u)), Struct_1(vec3<bool>(true, true, false), false, vec3<u32>(49649u, 4294967295u, 0u)), Struct_1(vec3<bool>(true, true, false), true, vec3<u32>(27013u, 1u, 1u)), Struct_1(vec3<bool>(true, true, true), true, vec3<u32>(30873u, 1u, 1u)), Struct_1(vec3<bool>(false, true, true), false, vec3<u32>(40239u, 0u, 4294967295u)), Struct_1(vec3<bool>(false, false, true), true, vec3<u32>(9015u, 0u, 4294967295u)), Struct_1(vec3<bool>(true, false, true), true, vec3<u32>(22748u, 1279u, 1491u)), Struct_1(vec3<bool>(false, true, false), false, vec3<u32>(6191u, 1u, 46266u)), Struct_1(vec3<bool>(true, false, true), false, vec3<u32>(0u, 4330u, 12931u)), Struct_1(vec3<bool>(false, false, true), true, vec3<u32>(84532u, 81780u, 16253u)), Struct_1(vec3<bool>(true, true, false), false, vec3<u32>(0u, 0u, 73221u)), Struct_1(vec3<bool>(false, false, false), false, vec3<u32>(4294967295u, 48921u, 33674u)), Struct_1(vec3<bool>(true, true, true), false, vec3<u32>(0u, 538u, 26108u)), Struct_1(vec3<bool>(true, false, true), true, vec3<u32>(65646u, 0u, 48617u)), Struct_1(vec3<bool>(false, true, false), true, vec3<u32>(4294967295u, 1u, 24702u)), Struct_1(vec3<bool>(false, true, false), true, vec3<u32>(4294967295u, 63252u, 1u)), Struct_1(vec3<bool>(false, false, false), false, vec3<u32>(114357u, 1u, 1u)), Struct_1(vec3<bool>(false, false, true), true, vec3<u32>(40455u, 32134u, 47682u)));

var<private> global2: array<Struct_1, 15>;

var<private> global3: array<i32, 15> = array<i32, 15>(i32(-2147483648), 1i, -52732i, i32(-2147483648), -16873i, -1i, -5753i, 0i, -1i, 0i, 1i, i32(-2147483648), 2147483647i, -54101i, -21927i);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1) -> vec4<i32> {
    let var_0 = ~30244i;
    global1 = array<Struct_1, 23>();
    var var_1 = Struct_2(_wgslsmith_add_vec3_u32(global0.c, _wgslsmith_mult_vec3_u32(firstTrailingBit(arg_0.c), ~vec3<u32>(u_input.a, global0.c.x, global0.c.x)) ^ arg_0.c), global2[_wgslsmith_index_u32(global0.c.x, 15u)]);
    let var_2 = arg_0;
    global2 = array<Struct_1, 15>();
    return countOneBits(firstTrailingBit(~(-_wgslsmith_sub_vec4_i32(vec4<i32>(45496i, -584i, -1i, 2147483647i), vec4<i32>(var_0, -2147483647i, -1i, global3[_wgslsmith_index_u32(0u, 15u)])))));
}

fn func_2(arg_0: vec4<bool>) -> u32 {
    global2 = array<Struct_1, 15>();
    global3 = array<i32, 15>();
    let var_0 = select(~(-(~vec4<i32>(global3[_wgslsmith_index_u32(69564u, 15u)], global3[_wgslsmith_index_u32(0u, 15u)], -19086i, global3[_wgslsmith_index_u32(global0.c.x, 15u)]))) ^ vec4<i32>(43845i, 25312i, global3[_wgslsmith_index_u32(77787u, 15u)], global3[_wgslsmith_index_u32(0u, 15u)]), func_3(global1[_wgslsmith_index_u32(abs(~u_input.a), 23u)]), global0.a.x);
    let var_1 = vec4<u32>(u_input.a, firstTrailingBit(~countOneBits(14541u)) >> ((global0.c.x >> (global0.c.x % 32u)) % 32u), max(0u, 10585u), global0.c.x);
    var var_2 = select(global0.a, select(arg_0.xyz, global0.a, true), -1i == global3[_wgslsmith_index_u32(firstLeadingBit(global0.c.x), 15u)]);
    return 0u;
}

fn func_1(arg_0: vec2<u32>) -> Struct_1 {
    var var_0 = vec3<u32>(func_2(vec4<bool>(any(vec2<bool>(false, global0.a.x)), all(!vec4<bool>(true, global0.a.x, global0.a.x, global0.b)), !all(vec2<bool>(global0.a.x, global0.a.x)), !global0.b)), abs(arg_0.x) >> (global0.c.x % 32u), arg_0.x);
    var_0 = vec3<u32>(func_2(vec4<bool>(all(!vec4<bool>(global0.b, true, global0.a.x, global0.b)), true, !global0.a.x, all(global0.a.yx))), 1u, 4294967295u);
    var var_1 = reverseBits(~_wgslsmith_add_i32(-global3[_wgslsmith_index_u32(~arg_0.x, 15u)], _wgslsmith_sub_i32(~(-1i), _wgslsmith_add_i32(global3[_wgslsmith_index_u32(44205u, 15u)], global3[_wgslsmith_index_u32(var_0.x, 15u)]))));
    let var_2 = global2[_wgslsmith_index_u32(var_0.x, 15u)];
    return Struct_1(select(vec3<bool>(!(global0.b | global0.a.x), global0.b, false), vec3<bool>(true, var_2.b, global0.a.x), vec3<bool>(any(vec4<bool>(false, global0.b, var_2.a.x, true)) && any(var_2.a), 0u > reverseBits(var_0.x), (global3[_wgslsmith_index_u32(u_input.a, 15u)] & global3[_wgslsmith_index_u32(76346u, 15u)]) >= global3[_wgslsmith_index_u32(countOneBits(arg_0.x), 15u)])), true, vec3<u32>(~1u, ~firstTrailingBit(countOneBits(1u)), global0.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 15>();
    var var_0 = vec2<i32>(global3[_wgslsmith_index_u32(17766u, 15u)], 22382i);
    let var_1 = func_1(global0.c.xy);
    var var_2 = !(!var_1.a.x);
    global1 = array<Struct_1, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(755f, -883f, 769f, 787f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1448f, -250f, 594f, -234f) * vec4<f32>(-258f, 1049f, 958f, 1464f))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 103f, -612f, -1230f)))))), firstLeadingBit(vec2<i32>(var_0.x, _wgslsmith_div_i32(global3[_wgslsmith_index_u32(abs(u_input.a), 15u)], global3[_wgslsmith_index_u32(1u, 15u)]))));
}

