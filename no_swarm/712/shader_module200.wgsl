struct Struct_1 {
    a: bool,
    b: f32,
    c: vec4<bool>,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
    c: vec4<i32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
    c: u32,
    d: vec2<u32>,
}

struct Struct_4 {
    a: i32,
    b: vec2<bool>,
    c: u32,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(42869i, 2147483647i, -1i);

var<private> global1: u32;

var<private> global2: array<u32, 15> = array<u32, 15>(31643u, 1u, 1u, 4294967295u, 1u, 1u, 104269u, 0u, 4294967295u, 1u, 27412u, 1u, 4294967295u, 54502u, 4294967295u);

var<private> global3: vec3<u32>;

var<private> global4: array<Struct_3, 19> = array<Struct_3, 19>(Struct_3(vec4<i32>(-1i, -1i, 22143i, 9345i), Struct_2(vec2<f32>(-1569f, 1024f), i32(-2147483648), vec4<i32>(i32(-2147483648), -23822i, 1i, -25149i)), 106281u, vec2<u32>(4294967295u, 4294967295u)), Struct_3(vec4<i32>(0i, 25296i, -1i, 1588i), Struct_2(vec2<f32>(328f, -1247f), 42094i, vec4<i32>(-13864i, 2147483647i, i32(-2147483648), 19096i)), 4294967295u, vec2<u32>(1u, 1u)), Struct_3(vec4<i32>(0i, -1i, i32(-2147483648), 7383i), Struct_2(vec2<f32>(1661f, -268f), 1i, vec4<i32>(0i, 2147483647i, 0i, -19682i)), 35860u, vec2<u32>(82965u, 4294967295u)), Struct_3(vec4<i32>(-14290i, -20609i, 0i, -36321i), Struct_2(vec2<f32>(1000f, -1082f), 1i, vec4<i32>(1i, -7990i, 28774i, 13462i)), 19906u, vec2<u32>(54426u, 4294967295u)), Struct_3(vec4<i32>(0i, 5374i, 13935i, 2831i), Struct_2(vec2<f32>(1159f, 1196f), -25183i, vec4<i32>(i32(-2147483648), 2147483647i, -55962i, 32917i)), 4294967295u, vec2<u32>(4294967295u, 9162u)), Struct_3(vec4<i32>(-590i, 2147483647i, 46388i, i32(-2147483648)), Struct_2(vec2<f32>(857f, -144f), 0i, vec4<i32>(35375i, i32(-2147483648), i32(-2147483648), 2147483647i)), 1704u, vec2<u32>(6072u, 0u)), Struct_3(vec4<i32>(i32(-2147483648), 33044i, -18848i, -45905i), Struct_2(vec2<f32>(-906f, 127f), -28918i, vec4<i32>(-21304i, 60187i, 74890i, -50887i)), 61043u, vec2<u32>(0u, 0u)), Struct_3(vec4<i32>(51650i, 8439i, -26846i, -18477i), Struct_2(vec2<f32>(-393f, 705f), 1i, vec4<i32>(0i, 1i, -46694i, -8897i)), 11908u, vec2<u32>(4294967295u, 330u)), Struct_3(vec4<i32>(-1i, -31289i, 1i, 30303i), Struct_2(vec2<f32>(-254f, 146f), i32(-2147483648), vec4<i32>(7417i, 36046i, 1i, 1875i)), 4294967295u, vec2<u32>(24649u, 1u)), Struct_3(vec4<i32>(-45085i, 0i, -8474i, 48537i), Struct_2(vec2<f32>(933f, 740f), -46747i, vec4<i32>(9590i, 13003i, -56378i, -1i)), 0u, vec2<u32>(4294967295u, 4294967295u)), Struct_3(vec4<i32>(0i, 1i, -1i, 19464i), Struct_2(vec2<f32>(-775f, -1423f), -1i, vec4<i32>(i32(-2147483648), -46059i, 2147483647i, 25447i)), 18980u, vec2<u32>(1u, 48894u)), Struct_3(vec4<i32>(40779i, -6392i, -1i, i32(-2147483648)), Struct_2(vec2<f32>(466f, -310f), 2147483647i, vec4<i32>(i32(-2147483648), 36200i, 0i, 41383i)), 124105u, vec2<u32>(4294967295u, 1u)), Struct_3(vec4<i32>(16422i, 17059i, 2147483647i, i32(-2147483648)), Struct_2(vec2<f32>(432f, 1000f), -31156i, vec4<i32>(-1i, -1i, 14513i, -21611i)), 82919u, vec2<u32>(1u, 1u)), Struct_3(vec4<i32>(51119i, -12338i, 6505i, 2932i), Struct_2(vec2<f32>(-951f, 453f), -5797i, vec4<i32>(0i, 1i, i32(-2147483648), i32(-2147483648))), 7347u, vec2<u32>(1u, 8996u)), Struct_3(vec4<i32>(0i, -27228i, i32(-2147483648), -1136i), Struct_2(vec2<f32>(708f, 389f), -18099i, vec4<i32>(0i, -10860i, i32(-2147483648), 1i)), 27139u, vec2<u32>(0u, 52887u)), Struct_3(vec4<i32>(i32(-2147483648), 1i, 1i, 12942i), Struct_2(vec2<f32>(-236f, -1563f), 1i, vec4<i32>(37335i, 0i, 0i, -1i)), 37960u, vec2<u32>(37067u, 1566u)), Struct_3(vec4<i32>(1i, -27175i, -1i, 51430i), Struct_2(vec2<f32>(-1343f, -184f), 1i, vec4<i32>(-1i, -13898i, 1i, 81311i)), 4294967295u, vec2<u32>(34237u, 1u)), Struct_3(vec4<i32>(-7241i, 1i, -1i, 50509i), Struct_2(vec2<f32>(639f, 1196f), 21256i, vec4<i32>(2147483647i, -22792i, 0i, i32(-2147483648))), 93779u, vec2<u32>(72786u, 32391u)), Struct_3(vec4<i32>(1i, 12585i, 32251i, i32(-2147483648)), Struct_2(vec2<f32>(2323f, -1016f), 2147483647i, vec4<i32>(9393i, i32(-2147483648), -1321i, 0i)), 1u, vec2<u32>(0u, 18628u)));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_1(arg_0: u32, arg_1: vec4<f32>, arg_2: Struct_3, arg_3: u32) -> bool {
    global4 = array<Struct_3, 19>();
    var var_0 = 840f;
    var var_1 = Struct_1(false, -1556f, !select(select(vec4<bool>(true, true, true, false), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), false), vec4<bool>(false, true, false, false)), vec4<bool>(all(vec4<bool>(true, true, false, false)), true, false, false), !select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false))), ~arg_2.b.c.yz, ~(arg_2.a & u_input.c));
    let var_2 = arg_2.b;
    var_1 = Struct_1(var_1.c.x, _wgslsmith_f_op_f32(-1263f - _wgslsmith_f_op_f32(f32(-1f) * -441f)), !var_1.c, ~select(_wgslsmith_add_vec2_i32(global0.xx, vec2<i32>(33152i, arg_2.b.b)), select(u_input.c.zy, var_1.d, false), vec2<bool>(true, var_1.c.x)) >> (~(~arg_2.d) % vec2<u32>(32u)), vec4<i32>(2147483647i, -var_1.e.x | min(var_1.e.x, -global0.x), _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.c.x, 1i, var_1.e.x, -2147483647i), vec4<i32>(-19853i, 0i, u_input.a, var_2.b) | vec4<i32>(arg_2.b.c.x, -4904i, 28826i, var_1.e.x)), -26332i), 0i));
    return any(select(vec3<bool>(true, var_1.b >= 903f, !any(vec4<bool>(var_1.a, var_1.c.x, true, var_1.c.x))), var_1.c.wzy, !all(var_1.c)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(539f, -820f)));
    let var_1 = u_input.b.yzz;
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1166f)), var_0.x);
    global1 = 0u;
    var var_3 = false;
    let var_4 = !vec4<bool>(!(global3.x > 23188u) && all(vec3<bool>(true, true, true)), true, true, -1i >= u_input.a);
    global0 = var_1;
    let var_5 = -_wgslsmith_dot_vec4_i32(u_input.c, select((vec4<i32>(var_1.x, -15710i, u_input.a, 57258i) | u_input.c) << (~vec4<u32>(26377u, 106820u, global3.x, 4294967295u) % vec4<u32>(32u)), vec4<i32>(global0.x, ~global0.x, 1i ^ global0.x, var_1.x), func_1(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, global2[_wgslsmith_index_u32(1u, 15u)], global2[_wgslsmith_index_u32(global3.x, 15u)]), vec3<u32>(global3.x, 4294967295u, 3759u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-519f, -673f, 674f, 120f)), Struct_3(vec4<i32>(u_input.c.x, -2147483647i, -4339i, -1i), Struct_2(vec2<f32>(var_0.x, var_2), u_input.a, u_input.c), 83160u, global3.yx), ~0u)));
    let x = u_input.a;
    s_output = StorageBuffer(global0.x, ~(~44797u), ~global3.x, var_5, -2147483647i);
}

