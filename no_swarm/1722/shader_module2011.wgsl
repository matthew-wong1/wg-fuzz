struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: bool,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 14> = array<vec2<bool>, 14>(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false));

var<private> global1: vec3<u32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> i32 {
    global1 = reverseBits(~vec3<u32>(global1.x, _wgslsmith_dot_vec3_u32(vec3<u32>(global1.x, global1.x, global1.x), vec3<u32>(5213u, 0u, 0u)), 0u)) << (_wgslsmith_mult_vec3_u32(vec3<u32>(40673u, 33623u, ~0u) & min(firstTrailingBit(vec3<u32>(global1.x, global1.x, global1.x)), vec3<u32>(global1.x, 4294967295u, global1.x) | vec3<u32>(global1.x, 0u, 1u)), vec3<u32>(~1284u, 4294967295u, global1.x >> (4294967295u % 32u)) >> (~(~vec3<u32>(global1.x, global1.x, 43901u)) % vec3<u32>(32u))) % vec3<u32>(32u));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-340f, _wgslsmith_f_op_f32(f32(-1f) * -116f), all(vec3<bool>(any(vec3<bool>(true, true, false)), false, any(vec4<bool>(true, true, false, false)))))));
    global1 = max(reverseBits((vec3<u32>(23329u, 4294967295u, 23379u) ^ vec3<u32>(global1.x, global1.x, 29831u)) & (min(vec3<u32>(4294967295u, 1u, global1.x), vec3<u32>(27879u, 1u, 47076u)) ^ abs(vec3<u32>(global1.x, global1.x, 4294967295u)))), select(vec3<u32>(countOneBits(_wgslsmith_sub_u32(1u, global1.x)), 40604u, ~global1.x ^ global1.x), select(firstTrailingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(46722u, 105770u, global1.x), vec3<u32>(4294967295u, 839u, global1.x))), vec3<u32>(0u, select(global1.x, 0u, false), ~0u), true), true));
    global0 = array<vec2<bool>, 14>();
    let var_1 = 1249f;
    return (31665i ^ _wgslsmith_sub_i32(~_wgslsmith_mult_i32(u_input.a, 2147483647i), min(u_input.a, 20535i))) | _wgslsmith_div_i32(_wgslsmith_mult_i32(~_wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(46306i, u_input.a, -34706i, 2147483647i)), 38737i), i32(-1i) * -6603i);
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: vec2<f32>) -> i32 {
    let var_0 = Struct_4(Struct_1(_wgslsmith_sub_vec2_i32(vec2<i32>(0i, arg_1.d.a.x) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u)), vec2<i32>(arg_1.d.a.x | arg_1.d.a.x, i32(-1i) * -1i)), _wgslsmith_div_u32(~global1.x, global1.x), all(arg_1.a)));
    let var_1 = Struct_2(select(arg_1.a, vec4<bool>(select(!var_0.a.c, arg_1.b, all(arg_1.a)), var_0.a.b <= 18847u, false, false), true), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(732f)), arg_1.c))), Struct_1(~countOneBits(u_input.b.xx), _wgslsmith_add_u32(~arg_0.x, 96846u), true));
    var var_2 = arg_1;
    var var_3 = select(!var_1.a, vec4<bool>(all(vec3<bool>(!var_2.b, select(false, false, var_1.a.x), var_0.a.c)), func_3() <= (1i ^ (var_2.d.a.x << (var_2.d.b % 32u))), !((var_1.d.b ^ 4294967295u) >= abs(global1.x)), !var_0.a.c), vec4<bool>(true, true, any(vec3<bool>(!arg_1.b, true, !var_0.a.c)), true));
    let var_4 = ~1u;
    return _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(firstLeadingBit(arg_1.d.a.x), ~var_1.d.a.x), arg_1.d.a ^ -vec2<i32>(43705i, -2147483647i), var_2.d.a), var_1.d.a) | ((17844i | max(u_input.b.x, var_0.a.a.x)) | firstTrailingBit(36470i));
}

fn func_1(arg_0: f32, arg_1: Struct_2, arg_2: f32, arg_3: u32) -> vec4<u32> {
    global0 = array<vec2<bool>, 14>();
    let var_0 = select(select(vec3<bool>(arg_1.a.x, any(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_1.d.b, global1.x), 14u)]), false), arg_1.a.zzw, !arg_1.a.ywz), vec3<bool>(true, !arg_1.d.c, -1076f < _wgslsmith_f_op_f32(min(arg_0, -1301f))), false);
    let var_1 = Struct_3(arg_1.d.b);
    global0 = array<vec2<bool>, 14>();
    var var_2 = max(vec3<i32>(_wgslsmith_sub_i32(func_2(~vec3<u32>(9628u, global1.x, arg_3), arg_1, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1417f, arg_1.c))), reverseBits(arg_1.d.a.x)), -countOneBits(abs(-1i)), 1i), -abs(select(vec3<i32>(u_input.a, -2147483647i, 18923i), ~u_input.b.ywy, !arg_1.a.wyw)));
    return ~firstTrailingBit(max(vec4<u32>(3757u, 45297u, arg_1.d.b, arg_3) | vec4<u32>(0u, 0u, arg_1.d.b, 41468u), vec4<u32>(var_1.a, arg_3, 55509u, 4294967295u) ^ vec4<u32>(42532u, var_1.a, arg_1.d.b, 77285u))) << ((select(_wgslsmith_sub_vec4_u32(select(vec4<u32>(arg_3, global1.x, 30347u, 4294967295u), vec4<u32>(1u, arg_3, 0u, var_1.a), false), firstTrailingBit(vec4<u32>(3203u, var_1.a, 0u, 0u))), max(~vec4<u32>(52833u, arg_3, 1u, 19780u), vec4<u32>(global1.x, 74971u, global1.x, 0u)), true) | ~vec4<u32>(~0u, ~0u, global1.x, 1u)) % vec4<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(vec2<i32>(u_input.b.x, -u_input.a) & vec2<i32>(u_input.b.x, u_input.a));
    let var_1 = min(~(~func_1(-1000f, Struct_2(vec4<bool>(true, false, true, true), false, -113f, Struct_1(vec2<i32>(var_0.x, 29331i), 68637u, false)), _wgslsmith_f_op_f32(f32(-1f) * -686f), global1.x)), ~func_1(1590f, Struct_2(vec4<bool>(true, true, true, false), true, 403f, Struct_1(vec2<i32>(u_input.a, -1i), 45735u, false)), _wgslsmith_f_op_f32(125f - 1163f), 4294967295u) & vec4<u32>(global1.x, ~1u, select(global1.x, global1.x >> (0u % 32u), any(vec3<bool>(true, false, false))), ~global1.x & 8162u));
    global1 = select(firstLeadingBit(_wgslsmith_add_vec3_u32(countOneBits(vec3<u32>(4294967295u, 8893u, 27548u)), var_1.zxy)), _wgslsmith_div_vec3_u32(var_1.yzy, ~vec3<u32>(max(var_1.x, 2049u), abs(84048u), 1u)), true);
    global1 = ~var_1.xyx & var_1.ywy;
    var_0 = ~vec2<i32>(_wgslsmith_sub_i32(~_wgslsmith_mult_i32(-26694i, u_input.b.x), ~_wgslsmith_sub_i32(var_0.x, -40514i)), var_0.x);
    global0 = array<vec2<bool>, 14>();
    let var_2 = -157f;
    let x = u_input.a;
    s_output = StorageBuffer(~(~(_wgslsmith_mod_u32(var_1.x, 0u) | ~var_1.x)), _wgslsmith_div_vec3_u32(var_1.xzy, var_1.wxw));
}

