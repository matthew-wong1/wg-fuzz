struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: Struct_2,
    e: i32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec2<f32>,
    c: f32,
    d: vec3<f32>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 26> = array<vec2<f32>, 26>(vec2<f32>(1192f, 754f), vec2<f32>(-274f, -344f), vec2<f32>(-495f, 1513f), vec2<f32>(-1000f, 1536f), vec2<f32>(-548f, -1054f), vec2<f32>(-201f, -1000f), vec2<f32>(-867f, -596f), vec2<f32>(-167f, -1779f), vec2<f32>(110f, 309f), vec2<f32>(895f, -2541f), vec2<f32>(-705f, 208f), vec2<f32>(514f, -511f), vec2<f32>(951f, -267f), vec2<f32>(-502f, -591f), vec2<f32>(1526f, -571f), vec2<f32>(-2562f, -1386f), vec2<f32>(-1435f, -161f), vec2<f32>(-127f, -1004f), vec2<f32>(486f, 339f), vec2<f32>(-2587f, 2395f), vec2<f32>(-1325f, -164f), vec2<f32>(210f, -407f), vec2<f32>(-1303f, 573f), vec2<f32>(-1823f, -596f), vec2<f32>(115f, -2328f), vec2<f32>(164f, 1000f));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_4, arg_2: vec4<u32>, arg_3: vec3<bool>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(global0[_wgslsmith_index_u32(~0u, 26u)])));
    var var_1 = vec4<bool>(arg_0.b == arg_1.a.x, var_0.x < var_0.x, !(var_0.x < -211f), false);
    return arg_0.b;
}

fn func_3() -> f32 {
    let var_0 = !vec4<bool>(false || select(true, all(vec4<bool>(true, false, true, true)), false), true, false, true);
    var var_1 = Struct_2(Struct_1(vec3<i32>(-2147483647i, u_input.b.x, u_input.a), _wgslsmith_add_u32(0u, 1u), any(select(!var_0, !vec4<bool>(var_0.x, var_0.x, false, false), select(var_0, vec4<bool>(var_0.x, var_0.x, false, var_0.x), false)))), Struct_1(u_input.b, max(1u, reverseBits(~65048u)), !select(all(vec4<bool>(true, var_0.x, true, var_0.x)), var_0.x, any(vec4<bool>(false, true, var_0.x, false)))));
    let var_2 = Struct_3(var_1.a, 883f, Struct_1(vec3<i32>(var_1.a.a.x << (0u % 32u), firstLeadingBit(u_input.a), -var_1.b.a.x) << (vec3<u32>(~var_1.a.b, var_1.b.b, 5072u) % vec3<u32>(32u)), var_1.b.b, var_0.x), Struct_2(var_1.b, Struct_1(select(vec3<i32>(2147483647i, 1i, u_input.a), vec3<i32>(u_input.a, 1i, 48483i) >> (vec3<u32>(var_1.b.b, 35209u, 13715u) % vec3<u32>(32u)), var_0.ywy), _wgslsmith_clamp_u32(4294967295u, var_1.b.b, ~1u), !all(vec4<bool>(var_0.x, var_0.x, var_1.b.c, true)))), _wgslsmith_sub_i32(firstLeadingBit(var_1.b.a.x) ^ -var_1.a.a.x, 1i) << (_wgslsmith_sub_u32(_wgslsmith_div_u32(66357u | var_1.a.b, var_1.b.b), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_1.a.b, var_1.a.b), vec3<u32>(76017u, 0u, var_1.a.b)) | var_1.a.b) % 32u));
    var_1 = Struct_2(Struct_1(select(vec3<i32>(var_2.c.a.x, var_2.a.a.x, var_1.b.a.x), _wgslsmith_sub_vec3_i32(vec3<i32>(var_1.a.a.x, -733i, var_1.b.a.x), u_input.b), !var_2.a.c) >> (_wgslsmith_div_vec3_u32(firstTrailingBit(vec3<u32>(var_1.a.b, 74984u, var_1.b.b)), ~vec3<u32>(4294967295u, 4294967295u, var_1.a.b)) % vec3<u32>(32u)), 13860u | countOneBits(reverseBits(var_1.b.b)), var_2.b >= 699f), var_1.b);
    var_1 = var_2.d;
    return 1673f;
}

fn func_2(arg_0: i32) -> Struct_1 {
    global0 = array<vec2<f32>, 26>();
    let var_0 = ~min(vec2<u32>(func_1(Struct_1(u_input.b, 0u, false), Struct_4(vec3<u32>(14637u, 25377u, 12970u), global0[_wgslsmith_index_u32(66977u, 26u)], 1263f, vec3<f32>(677f, 1118f, 1319f), vec2<bool>(false, false)), vec4<u32>(4294967295u, 4294967295u, 28777u, 4294967295u), vec3<bool>(false, false, true)), 1u), ~_wgslsmith_add_vec2_u32(vec2<u32>(45814u, 1u), vec2<u32>(0u, 0u))) | reverseBits(select(~vec2<u32>(1u, 4294967295u), vec2<u32>(8518u, 4294967295u), vec2<bool>(false, true)) << (countOneBits(reverseBits(vec2<u32>(16255u, 90326u))) % vec2<u32>(32u)));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(369f * 1000f))))), _wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(func_3()), select(true, 1u == _wgslsmith_mod_u32(var_0.x, 4294967295u), true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-619f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(465f, 215f) + _wgslsmith_f_op_f32(482f - 899f)))) * -216f));
    return Struct_1(-(min(vec3<i32>(u_input.c.x, arg_0, 2147483647i), _wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, -3959i, u_input.c.x), u_input.b)) | vec3<i32>(arg_0, 2147483647i, -arg_0)), ~var_0.x, all(vec4<bool>(false, arg_0 == u_input.c.x, select(true, u_input.a >= arg_0, all(vec2<bool>(false, false))), any(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, _wgslsmith_div_u32(min(23233u, 3712u), _wgslsmith_mult_u32(16124u, 1u)), 17930u, ~23004u), vec4<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(13415u, 11691u), _wgslsmith_mod_vec2_u32(vec2<u32>(22026u, 34428u), vec2<u32>(27948u, 1u))), 12440u, ~func_1(Struct_1(vec3<i32>(-45212i, u_input.a, -22215i), 32573u, true), Struct_4(vec3<u32>(0u, 16596u, 4294967295u), global0[_wgslsmith_index_u32(87793u, 26u)], -304f, vec3<f32>(-1028f, -1384f, 1319f), vec2<bool>(true, false)), vec4<u32>(28211u, 1u, 28987u, 9204u), vec3<bool>(true, true, false)), max(1u, ~61350u)), ~_wgslsmith_add_vec4_u32(vec4<u32>(1u, 28536u, 26345u, 55152u), reverseBits(vec4<u32>(67865u, 102330u, 44210u, 0u)))), ~vec4<u32>(0u, 1u, ~1u, 1u));
    global0 = array<vec2<f32>, 26>();
    global0 = array<vec2<f32>, 26>();
    global0 = array<vec2<f32>, 26>();
    global0 = array<vec2<f32>, 26>();
    var var_1 = func_2(-2147483647i);
    let var_2 = var_1.a.x == 2147483647i;
    global0 = array<vec2<f32>, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(1621f, 809f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-557f)), 1322f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-207f, -2050f)) * -319f), _wgslsmith_f_op_f32(f32(-1f) * -2460f))));
}

