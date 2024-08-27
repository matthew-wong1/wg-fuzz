struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: vec4<f32>,
    d: i32,
}

struct Struct_2 {
    a: i32,
    b: vec3<u32>,
    c: f32,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -27909i;

var<private> global1: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(-30321i, vec2<bool>(false, true), vec4<f32>(1009f, 1416f, -104f, 624f), -31245i), Struct_1(-1i, vec2<bool>(true, true), vec4<f32>(-1399f, 2275f, -1541f, -283f), 0i), Struct_1(0i, vec2<bool>(true, false), vec4<f32>(2042f, -561f, -1000f, -818f), -45065i), Struct_1(39830i, vec2<bool>(true, false), vec4<f32>(-1597f, -330f, -423f, 1654f), -61960i), Struct_1(26937i, vec2<bool>(false, true), vec4<f32>(-719f, 496f, 340f, 112f), -1i), Struct_1(23187i, vec2<bool>(false, true), vec4<f32>(1073f, -1000f, 559f, 404f), 6812i), Struct_1(-1i, vec2<bool>(false, true), vec4<f32>(1533f, -805f, 786f, -359f), 24007i), Struct_1(-44991i, vec2<bool>(true, false), vec4<f32>(334f, -632f, -1166f, -377f), i32(-2147483648)), Struct_1(79657i, vec2<bool>(false, true), vec4<f32>(269f, 2247f, 1140f, -217f), 100i), Struct_1(35810i, vec2<bool>(true, false), vec4<f32>(906f, -533f, -862f, 972f), -1i), Struct_1(46879i, vec2<bool>(true, false), vec4<f32>(1000f, -1000f, -489f, -132f), -8063i), Struct_1(i32(-2147483648), vec2<bool>(true, true), vec4<f32>(-757f, 333f, 374f, 1000f), 12583i), Struct_1(11590i, vec2<bool>(false, false), vec4<f32>(-1153f, -671f, -2261f, 1034f), 2147483647i), Struct_1(-30225i, vec2<bool>(true, false), vec4<f32>(-1513f, 1247f, -313f, 209f), 1i), Struct_1(-85641i, vec2<bool>(true, true), vec4<f32>(430f, 854f, 120f, 1000f), 2147483647i), Struct_1(5952i, vec2<bool>(true, false), vec4<f32>(-576f, -524f, 1480f, 1001f), -24553i), Struct_1(-1i, vec2<bool>(false, false), vec4<f32>(-1617f, -520f, -337f, 305f), -1i), Struct_1(-35372i, vec2<bool>(true, true), vec4<f32>(-687f, -273f, 697f, -136f), -30845i), Struct_1(i32(-2147483648), vec2<bool>(true, true), vec4<f32>(-342f, 1235f, -458f, 1195f), 1i), Struct_1(-31413i, vec2<bool>(true, false), vec4<f32>(793f, 1000f, -642f, 113f), -18745i), Struct_1(-6532i, vec2<bool>(true, true), vec4<f32>(-918f, -421f, 940f, -803f), i32(-2147483648)), Struct_1(31183i, vec2<bool>(false, false), vec4<f32>(751f, 809f, 1763f, 493f), i32(-2147483648)), Struct_1(48306i, vec2<bool>(true, false), vec4<f32>(-352f, 443f, 1619f, -380f), 0i), Struct_1(0i, vec2<bool>(false, false), vec4<f32>(1012f, -159f, 1350f, 449f), -1i), Struct_1(12629i, vec2<bool>(false, true), vec4<f32>(1214f, 2596f, -1359f, -644f), -39385i), Struct_1(0i, vec2<bool>(false, false), vec4<f32>(326f, -1946f, 232f, 386f), i32(-2147483648)), Struct_1(1i, vec2<bool>(true, true), vec4<f32>(1328f, 1449f, -399f, -1000f), -1i));

var<private> global2: array<vec4<bool>, 6>;

var<private> global3: array<f32, 28>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1(arg_0: Struct_2, arg_1: bool) -> i32 {
    var var_0 = ~firstTrailingBit(~(-vec4<i32>(u_input.a, -1i, arg_0.e.a, u_input.a) & _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, 1i, 5820i, -1668i))));
    let var_1 = arg_0.e;
    let var_2 = 1u;
    let var_3 = vec3<u32>(~9476u, 47914u, 4294967295u) | arg_0.b;
    return -1i;
}

fn func_3(arg_0: bool, arg_1: Struct_2) -> i32 {
    global0 = -arg_1.a;
    global1 = array<Struct_1, 27>();
    let var_0 = global3[_wgslsmith_index_u32(_wgslsmith_add_u32(35656u, min(1u, 0u)), 28u)];
    global3 = array<f32, 28>();
    return 1i;
}

fn func_2(arg_0: vec2<f32>, arg_1: u32, arg_2: i32) -> u32 {
    var var_0 = vec2<i32>(1i, u_input.a);
    global3 = array<f32, 28>();
    var var_1 = _wgslsmith_div_vec2_i32(~vec2<i32>(~55130i, arg_2), vec2<i32>(-func_3(true, Struct_2(0i, vec3<u32>(arg_1, 39134u, arg_1), global3[_wgslsmith_index_u32(arg_1, 28u)], 1u, Struct_1(-24232i, vec2<bool>(true, true), vec4<f32>(390f, arg_0.x, 917f, global3[_wgslsmith_index_u32(1u, 28u)]), arg_2))) ^ arg_2, ~firstLeadingBit(-13276i)));
    var var_2 = -334f;
    let var_3 = global1[_wgslsmith_index_u32(~43004u, 27u)];
    return ~26807u;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<f32, 28>();
    global2 = array<vec4<bool>, 6>();
    global0 = u_input.a;
    var var_0 = (-vec4<i32>(func_1(Struct_2(2147483647i, vec3<u32>(58295u, 0u, 1u), -467f, 36871u, global1[_wgslsmith_index_u32(46200u, 27u)]), true), u_input.a, 38955i, ~u_input.a) >> (~vec4<u32>(_wgslsmith_mod_u32(46304u, 1u), 11660u, func_2(vec2<f32>(global3[_wgslsmith_index_u32(31369u, 28u)], 1521f), 11098u, u_input.a), firstLeadingBit(4294967295u)) % vec4<u32>(32u))) & -select(vec4<i32>(~u_input.a, -11238i, reverseBits(u_input.a), -1i), max(vec4<i32>(u_input.a, -1i, -26788i, u_input.a), select(vec4<i32>(1i, 2147483647i, u_input.a, 2147483647i), vec4<i32>(u_input.a, u_input.a, u_input.a, 15880i), global2[_wgslsmith_index_u32(1u, 6u)])), vec4<bool>(any(vec4<bool>(false, false, false, true)), false, true, false));
    var var_1 = vec3<bool>(false, any(vec4<bool>(false, any(vec2<bool>(true, true)), false, true)), true);
    global2 = array<vec4<bool>, 6>();
    var var_2 = Struct_1(_wgslsmith_mult_i32(-51139i, u_input.a), var_1.xz, vec4<f32>(362f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global3[_wgslsmith_index_u32(0u, 28u)], -634f))))), _wgslsmith_f_op_f32(select(global3[_wgslsmith_index_u32(~21975u, 28u)], _wgslsmith_f_op_f32(-1147f - -1393f), (false & var_1.x) && false)), _wgslsmith_f_op_f32(trunc(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, 1u), 28u)]))), _wgslsmith_sub_i32(1i, -33608i) & (var_0.x << (min(4294967295u, 1u) % 32u)));
    let var_3 = _wgslsmith_div_vec3_i32(vec3<i32>(var_2.a, 25166i, -44590i & var_0.x), firstLeadingBit(vec3<i32>(u_input.a, select(1i, var_0.x, var_2.b.x), var_0.x | u_input.a)) ^ -reverseBits(-vec3<i32>(var_0.x, u_input.a, -9977i)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_mult_vec3_u32(vec3<u32>(49783u, 4294967295u, 0u), vec3<u32>(1u, 1u, 4294967295u))) | (_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 1u, 0u), select(vec3<u32>(0u, 59882u, 0u), vec3<u32>(23988u, 7801u, 4294967295u), var_1.x)) ^ vec3<u32>(max(44150u, 1u), 0u, 1u)));
}

