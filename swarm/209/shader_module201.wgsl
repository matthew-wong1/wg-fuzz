struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
    c: i32,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 26>;

var<private> global1: array<Struct_3, 30> = array<Struct_3, 30>(Struct_3(vec4<i32>(2147483647i, 1i, 13003i, 0i), Struct_1(-592f), 17007i, vec4<f32>(934f, 1961f, 1188f, 737f)), Struct_3(vec4<i32>(1i, 0i, 0i, -1743i), Struct_1(1385f), i32(-2147483648), vec4<f32>(-1274f, -1000f, -1000f, 600f)), Struct_3(vec4<i32>(-1i, 0i, 2529i, 2147483647i), Struct_1(1580f), i32(-2147483648), vec4<f32>(-1449f, -710f, 1209f, 1181f)), Struct_3(vec4<i32>(-13839i, 78626i, 24959i, 50006i), Struct_1(-1145f), 2147483647i, vec4<f32>(215f, -282f, 1225f, -183f)), Struct_3(vec4<i32>(38654i, -18925i, 60725i, -807i), Struct_1(1000f), 39562i, vec4<f32>(383f, 1000f, 289f, -1000f)), Struct_3(vec4<i32>(1i, -47835i, 0i, -11491i), Struct_1(486f), 0i, vec4<f32>(-104f, -1116f, -1608f, -178f)), Struct_3(vec4<i32>(10226i, 42693i, 41415i, 37100i), Struct_1(-754f), 1i, vec4<f32>(301f, 1655f, -1248f, -1849f)), Struct_3(vec4<i32>(2147483647i, 0i, -27137i, 0i), Struct_1(-514f), 1i, vec4<f32>(-978f, 758f, -1070f, -628f)), Struct_3(vec4<i32>(-33818i, 38775i, 2147483647i, 2147483647i), Struct_1(-309f), -26106i, vec4<f32>(-711f, -168f, 765f, 808f)), Struct_3(vec4<i32>(1i, -17477i, 0i, i32(-2147483648)), Struct_1(655f), 0i, vec4<f32>(1000f, 334f, -890f, -1000f)), Struct_3(vec4<i32>(i32(-2147483648), 2147483647i, 1i, 32828i), Struct_1(207f), 42828i, vec4<f32>(1000f, 417f, 2329f, -1816f)), Struct_3(vec4<i32>(-1i, 27756i, -1i, -13332i), Struct_1(1387f), 2147483647i, vec4<f32>(261f, -780f, 721f, -339f)), Struct_3(vec4<i32>(-14792i, -1i, 46825i, 20752i), Struct_1(2830f), 51105i, vec4<f32>(720f, 1144f, -183f, -412f)), Struct_3(vec4<i32>(0i, i32(-2147483648), 54254i, 1i), Struct_1(-823f), 33313i, vec4<f32>(289f, 800f, 1378f, -411f)), Struct_3(vec4<i32>(43446i, 7393i, 0i, 40355i), Struct_1(403f), i32(-2147483648), vec4<f32>(-1778f, 1011f, 2148f, 683f)), Struct_3(vec4<i32>(-48408i, 2147483647i, 2147483647i, -376i), Struct_1(-444f), 0i, vec4<f32>(125f, 480f, -268f, -217f)), Struct_3(vec4<i32>(-18115i, 5107i, -35233i, 66641i), Struct_1(761f), 2147483647i, vec4<f32>(-860f, -1000f, 757f, 2024f)), Struct_3(vec4<i32>(0i, -1i, 2147483647i, -24284i), Struct_1(762f), 2147483647i, vec4<f32>(-1631f, 1541f, -528f, 286f)), Struct_3(vec4<i32>(46123i, 3806i, -1i, 12739i), Struct_1(1326f), 0i, vec4<f32>(-1318f, -348f, 1313f, 662f)), Struct_3(vec4<i32>(9294i, 0i, 0i, 2147483647i), Struct_1(-975f), 51436i, vec4<f32>(298f, -125f, -2942f, -1000f)), Struct_3(vec4<i32>(-1i, -1i, 0i, 0i), Struct_1(689f), i32(-2147483648), vec4<f32>(-992f, -1085f, 1000f, -1000f)), Struct_3(vec4<i32>(-3680i, 4530i, 60358i, 2147483647i), Struct_1(1499f), -66391i, vec4<f32>(-1728f, 1060f, 1846f, 139f)), Struct_3(vec4<i32>(-22449i, 2147483647i, 64067i, 0i), Struct_1(-1000f), 22100i, vec4<f32>(-495f, -1630f, 614f, -794f)), Struct_3(vec4<i32>(8882i, -1i, -1i, 34726i), Struct_1(-515f), -1i, vec4<f32>(1000f, 1291f, 723f, -136f)), Struct_3(vec4<i32>(22788i, 27727i, -13288i, 23947i), Struct_1(-2093f), -3702i, vec4<f32>(-369f, -477f, -885f, -532f)), Struct_3(vec4<i32>(-1i, 68501i, 2147483647i, 2147483647i), Struct_1(-616f), 61628i, vec4<f32>(-1000f, -260f, -1066f, -1493f)), Struct_3(vec4<i32>(10409i, 46988i, 36390i, -37866i), Struct_1(-753f), -68502i, vec4<f32>(-487f, 2205f, -896f, 734f)), Struct_3(vec4<i32>(0i, 83476i, -33226i, 44934i), Struct_1(608f), 1i, vec4<f32>(-412f, 1377f, 1000f, 374f)), Struct_3(vec4<i32>(1i, -1i, 18939i, -1i), Struct_1(1496f), 0i, vec4<f32>(1373f, 781f, 896f, 755f)), Struct_3(vec4<i32>(2147483647i, 2147483647i, -2628i, 2147483647i), Struct_1(367f), -55984i, vec4<f32>(756f, 550f, -1336f, -1812f)));

var<private> global2: Struct_2 = Struct_2(-705f);

var<private> global3: f32;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: i32, arg_3: Struct_2) -> f32 {
    let var_0 = arg_1.b;
    let var_1 = Struct_1(arg_1.d.x);
    global2 = Struct_2(_wgslsmith_f_op_f32(ceil(244f)));
    global2 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a) * _wgslsmith_f_op_f32(763f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global2.a - var_0.a))))));
    global3 = arg_3.a;
    return 885f;
}

fn func_2() -> vec2<i32> {
    let var_0 = vec4<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.a), _wgslsmith_f_op_f32(max(-1000f, global2.a))))) * _wgslsmith_f_op_f32(global2.a + 698f)), _wgslsmith_div_f32(global2.a, _wgslsmith_f_op_f32(func_3(u_input.a.xy, Struct_3(vec4<i32>(u_input.d.x, u_input.c.x, u_input.d.x, 1522i), Struct_1(global2.a), u_input.d.x, vec4<f32>(global2.a, 670f, global2.a, global2.a)), u_input.c.x, Struct_2(_wgslsmith_f_op_f32(min(-1081f, -372f)))))), _wgslsmith_div_f32(384f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f))) + global2.a)));
    var var_1 = select(vec4<bool>(all(vec4<bool>(true, true, true, true)), true, all(vec4<bool>(var_0.x >= var_0.x, true, true, true)), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)))), !vec4<bool>(any(select(vec2<bool>(true, false), global0[_wgslsmith_index_u32(67258u, 26u)], false)), any(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true))), true, false), select(!(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), false)), select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), true)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), false), true), any(select(vec2<bool>(false, false), vec2<bool>(true, true), global0[_wgslsmith_index_u32(u_input.b, 26u)]))), select(vec4<bool>(true, true, true, true), vec4<bool>(any(global0[_wgslsmith_index_u32(4294967295u, 26u)]), true, any(global0[_wgslsmith_index_u32(0u, 26u)]), any(vec4<bool>(true, true, false, false))), vec4<bool>(select(true, true, false), true, false, any(vec3<bool>(true, true, false))))));
    let var_2 = abs(u_input.a.xxx | ~u_input.a.zxy);
    var var_3 = min(var_2.yz, ~(~_wgslsmith_add_vec2_u32(vec2<u32>(20845u, 0u), vec2<u32>(var_2.x, u_input.b) & vec2<u32>(1u, 0u))));
    let var_4 = 363f;
    return vec2<i32>(_wgslsmith_mult_i32(u_input.d.x, -u_input.c.x), 28280i);
}

fn func_1() -> StorageBuffer {
    global1 = array<Struct_3, 30>();
    let var_0 = _wgslsmith_mult_i32(-u_input.c.x, _wgslsmith_div_i32(-u_input.c.x, _wgslsmith_mult_i32(countOneBits(-2147483647i), u_input.c.x)));
    global3 = -1484f;
    let var_1 = _wgslsmith_dot_vec2_i32(func_2(), vec2<i32>(u_input.d.x, u_input.c.x));
    var var_2 = ~(~abs(u_input.b));
    return StorageBuffer(0u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (abs(u_input.b) & 10596u) >> (_wgslsmith_dot_vec3_u32(u_input.a.yzw, ~_wgslsmith_mult_vec3_u32(min(u_input.a.yxy, u_input.a.xyz), select(u_input.a.xzz, u_input.a.yzy, vec3<bool>(false, false, false)))) % 32u);
    let var_1 = Struct_2(global2.a);
    var var_2 = var_1.a;
    global0 = array<vec2<bool>, 26>();
    var var_3 = Struct_2(-2614f);
    global1 = array<Struct_3, 30>();
    let x = u_input.a;
    s_output = func_1();
}

