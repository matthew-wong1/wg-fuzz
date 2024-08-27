struct Struct_1 {
    a: bool,
    b: u32,
    c: u32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
}

struct Struct_4 {
    a: bool,
    b: i32,
    c: u32,
    d: bool,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(true, Struct_1(true, 0u, 2330u, vec2<i32>(23025i, 17085i)));

var<private> global1: Struct_1 = Struct_1(false, 4294967295u, 0u, vec2<i32>(1i, -1i));

var<private> global2: array<Struct_4, 16> = array<Struct_4, 16>(Struct_4(false, -57086i, 20120u, false, vec3<f32>(-463f, -809f, 178f)), Struct_4(false, 0i, 24918u, true, vec3<f32>(992f, 306f, 1006f)), Struct_4(false, 11774i, 4294967295u, true, vec3<f32>(1020f, -617f, 168f)), Struct_4(false, i32(-2147483648), 54944u, false, vec3<f32>(-258f, 2238f, -951f)), Struct_4(true, -3515i, 0u, true, vec3<f32>(1112f, -1032f, -1544f)), Struct_4(true, i32(-2147483648), 19167u, true, vec3<f32>(-1024f, 2473f, 1000f)), Struct_4(true, i32(-2147483648), 0u, true, vec3<f32>(1000f, 1318f, 240f)), Struct_4(true, 2147483647i, 1u, false, vec3<f32>(-407f, 444f, 1830f)), Struct_4(true, 2147483647i, 68153u, true, vec3<f32>(477f, 375f, 1935f)), Struct_4(false, -32462i, 0u, true, vec3<f32>(-260f, 1000f, 1964f)), Struct_4(false, -16527i, 4294967295u, false, vec3<f32>(1561f, 141f, -1000f)), Struct_4(false, 22723i, 0u, false, vec3<f32>(-397f, -777f, -145f)), Struct_4(true, -2776i, 915u, true, vec3<f32>(1951f, 1986f, 895f)), Struct_4(false, 1i, 1u, false, vec3<f32>(1427f, -135f, 2056f)), Struct_4(true, -1i, 12011u, false, vec3<f32>(748f, -314f, 1610f)), Struct_4(false, 0i, 37548u, false, vec3<f32>(238f, -161f, -1775f)));

var<private> global3: array<f32, 15>;

var<private> global4: vec4<bool> = vec4<bool>(true, false, false, true);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: vec4<bool>, arg_2: i32, arg_3: vec2<i32>) -> i32 {
    let var_0 = _wgslsmith_mult_i32(~(~_wgslsmith_mod_i32(global0.b.d.x >> (14953u % 32u), -1i)), -30890i);
    let var_1 = global2[_wgslsmith_index_u32(min(1u, _wgslsmith_sub_u32(19310u, min(_wgslsmith_dot_vec2_u32(firstLeadingBit(u_input.c.xx), vec2<u32>(0u, 1u)), u_input.c.x))), 16u)];
    let var_2 = _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(~(countOneBits(arg_3) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(var_1.c, var_1.c), u_input.c.yy, u_input.c.yw) % vec2<u32>(32u))), select(-global1.d, global0.b.d, !vec2<bool>(arg_0, true)) << (u_input.c.yx % vec2<u32>(32u))), _wgslsmith_mult_vec2_i32(-reverseBits(vec2<i32>(70842i, -24662i)), reverseBits(vec2<i32>(-var_0, abs(5561i)))));
    let var_3 = ~_wgslsmith_sub_u32(13074u, countOneBits(~0u) | _wgslsmith_add_u32(~u_input.c.x, global0.b.c));
    global1 = global0.b;
    return var_2;
}

fn func_2(arg_0: Struct_4) -> u32 {
    let var_0 = ~select(37173u, u_input.c.x, global1.b <= 1u);
    global3 = array<f32, 15>();
    let var_1 = Struct_2(!select(true, true, global1.d.x != ~arg_0.b), Struct_1(arg_0.a, 1u, 5228u, vec2<i32>(firstLeadingBit(-1i << (0u % 32u)), func_3(true, select(vec4<bool>(false, global0.a, true, true), vec4<bool>(global1.a, true, false, global0.a), true), reverseBits(global1.d.x), select(u_input.b, vec2<i32>(global0.b.d.x, 2147483647i), vec2<bool>(arg_0.a, false))))));
    let var_2 = var_1.b;
    let var_3 = 3358u;
    return ~var_3;
}

fn func_1() -> Struct_3 {
    var var_0 = global2[_wgslsmith_index_u32(~func_2(global2[_wgslsmith_index_u32(~573u, 16u)]), 16u)];
    let var_1 = Struct_3(global0.b, countOneBits(global0.b.d.x));
    var var_2 = ~global1.d.x;
    let var_3 = global0.b;
    var var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_0.e.xy, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(var_0.e.x, global3[_wgslsmith_index_u32(var_0.c, 15u)], true)), _wgslsmith_div_f32(var_0.e.x, var_0.e.x)) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.e.xy - var_0.e.zy), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.e.x, -1522f)))))) + vec2<f32>(-320f, _wgslsmith_f_op_f32(floor(var_0.e.x))));
    return var_1;
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<u32>, arg_2: vec3<f32>, arg_3: Struct_3) -> StorageBuffer {
    global2 = array<Struct_4, 16>();
    let var_0 = vec4<bool>(!global1.a, false, all(!(!select(vec4<bool>(true, true, global1.a, false), vec4<bool>(false, global1.a, global4.x, arg_3.a.a), vec4<bool>(false, false, global1.a, global4.x)))), true);
    var var_1 = -1300f;
    let var_2 = arg_3.a;
    var var_3 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~55034u, _wgslsmith_sub_u32(~1u, 10198u) >> (~(~0u) % 32u)), 16u)];
    return StorageBuffer(_wgslsmith_add_i32(~var_3.b, max(u_input.a.x, var_3.b)), _wgslsmith_sub_vec3_u32(u_input.c.zwy, countOneBits(arg_1.xyx)), 1u, _wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-arg_2.zx), _wgslsmith_f_op_vec2_f32(exp2(var_3.e.yx)), !(!global4.yy))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(vec4<u32>(_wgslsmith_sub_u32(global0.b.b, 0u), ~(u_input.c.x << ((u_input.c.x & global0.b.b) % 32u)), _wgslsmith_mod_u32(_wgslsmith_mult_u32(~u_input.c.x, min(4294967295u, u_input.c.x)), 73127u), select(_wgslsmith_add_u32(global1.b, 0u) & u_input.c.x, ~_wgslsmith_dot_vec4_u32(u_input.c, u_input.c), global1.a | global0.a)), u_input.c, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(u_input.c.x, 15u)], global3[_wgslsmith_index_u32(global1.c, 15u)], global3[_wgslsmith_index_u32(global0.b.b, 15u)]) * vec3<f32>(global3[_wgslsmith_index_u32(1u, 15u)], global3[_wgslsmith_index_u32(21711u, 15u)], 1147f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(4294967295u, 15u)], -1159f, global3[_wgslsmith_index_u32(1u, 15u)]) - vec3<f32>(1000f, global3[_wgslsmith_index_u32(u_input.c.x, 15u)], -323f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(1854u, 15u)] - global3[_wgslsmith_index_u32(u_input.c.x, 15u)]), _wgslsmith_f_op_f32(step(-626f, -848f)), 886f)), vec3<bool>(global0.a, global4.x, true))), func_1());
}

