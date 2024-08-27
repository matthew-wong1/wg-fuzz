struct Struct_1 {
    a: bool,
    b: f32,
    c: vec2<u32>,
    d: bool,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 3> = array<vec4<bool>, 3>(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false));

var<private> global1: array<vec2<i32>, 32>;

var<private> global2: Struct_3;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: vec2<f32>) -> vec3<u32> {
    let var_0 = Struct_2(arg_0.c, arg_0.b, arg_0.c);
    let var_1 = Struct_1(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-270f)) * _wgslsmith_f_op_f32(abs(arg_0.a.b))), ~_wgslsmith_add_vec2_u32(~(vec2<u32>(27803u, 51569u) << (vec2<u32>(1u, 1u) % vec2<u32>(32u))), vec2<u32>(0u, countOneBits(global2.a.c.x))), -28458i <= (_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.a.e.x, arg_0.c.e.x, global2.a.e.x) << (vec3<u32>(u_input.a.x, global2.b.x, global2.a.c.x) % vec3<u32>(32u)), vec3<i32>(-1i, global2.a.e.x, -2147483647i)) ^ arg_0.a.e.x), countOneBits(arg_0.a.e));
    let var_2 = _wgslsmith_sub_vec4_i32(vec4<i32>(reverseBits(_wgslsmith_sub_i32(2147483647i, i32(-1i) * -7599i)), 30596i, i32(-1i) * -1i, _wgslsmith_clamp_i32(0i, arg_0.c.e.x, -31414i)), vec4<i32>(_wgslsmith_mult_i32(~var_1.e.x, ~(var_1.e.x << (15792u % 32u))), arg_0.a.e.x, arg_0.c.e.x, _wgslsmith_mod_i32(-(i32(-1i) * -9517i), _wgslsmith_dot_vec2_i32(-var_1.e, arg_0.a.e << (global2.c.c % vec2<u32>(32u))))));
    let var_3 = _wgslsmith_mod_vec3_i32(var_2.yzy, var_2.xzw);
    let var_4 = Struct_2(arg_0.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-101f, _wgslsmith_f_op_f32(-var_1.b), _wgslsmith_f_op_f32(select(1265f, var_1.b, var_0.a.a)), _wgslsmith_f_op_f32(-var_0.c.b)), var_0.b)), var_0.c);
    return min(~global2.b & _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_add_u32(32715u, global2.a.c.x), ~global2.b.x, _wgslsmith_dot_vec3_u32(global2.b, vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u))), _wgslsmith_mult_vec3_u32(vec3<u32>(var_4.a.c.x, arg_1, 41435u), global2.b)), min(global2.b, min(~vec3<u32>(4294967295u, u_input.a.x, var_0.c.c.x), abs(global2.b))));
}

fn func_2(arg_0: i32) -> vec2<u32> {
    global0 = array<vec4<bool>, 3>();
    global2 = Struct_3(Struct_1(1084f != global2.c.b, 748f, ~(u_input.a ^ global2.b.zx), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global2.a.b), global2.c.b, global2.c.a)) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.c.b) - _wgslsmith_f_op_f32(-396f * global2.c.b)), global1[_wgslsmith_index_u32(1u, 32u)]), vec3<u32>(_wgslsmith_mod_u32(~(~global2.b.x), ~abs(global2.c.c.x)), ~global2.b.x, ~reverseBits(4789u)), global2.a);
    global2 = Struct_3(Struct_1(!(-1203f != _wgslsmith_f_op_f32(min(global2.a.b, -505f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.c.b) + _wgslsmith_f_op_f32(round(global2.a.b)))), u_input.a, !select(global2.c.d, false, false), reverseBits(vec2<i32>(abs(global2.c.e.x), -2147483647i))), min(global2.b, _wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(global2.b, ~vec3<u32>(global2.c.c.x, 8207u, 32024u)), global2.b)), global2.c);
    var var_0 = Struct_3(global2.a, _wgslsmith_sub_vec3_u32(~func_3(Struct_2(Struct_1(false, 649f, global2.c.c, false, global2.c.e), vec4<f32>(1883f, global2.c.b, 1432f, 904f), Struct_1(global2.a.d, global2.c.b, global2.a.c, global2.a.a, vec2<i32>(arg_0, arg_0))), global2.a.c.x, vec2<f32>(-1000f, -1240f)), select(firstLeadingBit(vec3<u32>(68383u, 1u, u_input.a.x)), _wgslsmith_mult_vec3_u32(global2.b, vec3<u32>(u_input.a.x, 31027u, u_input.a.x)), global2.c.a)) << (vec3<u32>(_wgslsmith_dot_vec2_u32(global2.b.zx, abs(vec2<u32>(u_input.a.x, 0u))), 1u, 33774u) % vec3<u32>(32u)), global2.a);
    global0 = array<vec4<bool>, 3>();
    return ~global2.b.xx;
}

fn func_1(arg_0: vec3<u32>, arg_1: bool) -> u32 {
    let var_0 = Struct_1(true, 1000f, _wgslsmith_div_vec2_u32(~func_2(-85035i), min(global2.b.zz, global2.a.c)), true, reverseBits(abs((vec2<i32>(global2.a.e.x, -1i) >> (vec2<u32>(global2.a.c.x, global2.a.c.x) % vec2<u32>(32u))) | _wgslsmith_sub_vec2_i32(vec2<i32>(global2.a.e.x, 0i), vec2<i32>(global2.c.e.x, global2.c.e.x)))));
    var var_1 = global0[_wgslsmith_index_u32(abs(max(global2.c.c.x, global2.b.x)), 3u)];
    var_1 = select(!vec4<bool>(var_1.x, !arg_1 | true, var_1.x, var_0.a), select(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, 1u), 3u)], select(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(26861u, ~arg_0.x), 3u)], !global0[_wgslsmith_index_u32(u_input.a.x ^ global2.a.c.x, 3u)], global0[_wgslsmith_index_u32(~abs(71456u), 3u)]), true), var_0.a == all(select(select(vec3<bool>(global2.c.d, arg_1, var_1.x), var_1.yzy, true), var_1.zxy, var_1.xyx)));
    var var_2 = global2.c;
    var_2 = Struct_1(~(~(0u ^ arg_0.x)) != ~(~4294967295u), var_0.b, _wgslsmith_div_vec2_u32(reverseBits(vec2<u32>(50909u, 66799u)), arg_0.xy), ~(~1i) < var_2.e.x, ~_wgslsmith_mult_vec2_i32(vec2<i32>(-9809i, _wgslsmith_dot_vec4_i32(vec4<i32>(79019i, 0i, -28355i, -34320i), vec4<i32>(var_0.e.x, global2.a.e.x, var_2.e.x, -2147483647i))), vec2<i32>(countOneBits(global2.c.e.x), var_2.e.x >> (u_input.a.x % 32u))));
    return 28147u;
}

fn func_4(arg_0: u32) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global2.a.b))))) + _wgslsmith_f_op_f32(select(-602f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1380f, _wgslsmith_f_op_f32(1053f + global2.c.b), -204f < global2.c.b)) * -305f), any(vec2<bool>(global2.c.e.x != 0i, 4294967295u > u_input.a.x)))));
    let var_1 = Struct_2(Struct_1(true, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(428f, _wgslsmith_div_f32(global2.a.b, 317f)), var_0)), global2.a.c, all(!select(vec3<bool>(true, true, global2.a.d), vec3<bool>(true, global2.a.a, true), vec3<bool>(true, global2.a.d, true))), _wgslsmith_sub_vec2_i32(vec2<i32>(global2.c.e.x, _wgslsmith_add_i32(-1i, global2.a.e.x)), ~global1[_wgslsmith_index_u32(~28306u, 32u)])), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_0, 794f, global2.c.b, _wgslsmith_f_op_f32(f32(-1f) * -1340f)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-969f, -128f, -422f, 1327f))), vec4<f32>(global2.a.b, -1708f, 1383f, var_0))))), global2.c);
    var var_2 = _wgslsmith_div_u32(global2.b.x, var_1.a.c.x);
    var_2 = select(~u_input.a.x & u_input.a.x, 1u | u_input.a.x, true) | 34212u;
    let var_3 = Struct_2(global2.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1.b * _wgslsmith_f_op_vec4_f32(-var_1.b)))), var_1.c);
    return var_1.b.wz;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(func_1(vec3<u32>(1u, 13118u, u_input.a.x) & firstTrailingBit(vec3<u32>(0u, u_input.a.x, u_input.a.x)), global2.a.a))));
    var var_1 = global2.c;
    var_1 = global2.c;
    var var_2 = firstTrailingBit(~_wgslsmith_mod_vec4_i32(vec4<i32>(~2147483647i, -43024i, 2147483647i, global2.a.e.x >> (u_input.a.x % 32u)), vec4<i32>(global2.c.e.x, global2.c.e.x, -2147483647i, -36414i) << ((vec4<u32>(global2.c.c.x, var_1.c.x, global2.c.c.x, 30523u) | vec4<u32>(64501u, 0u, global2.b.x, u_input.a.x)) % vec4<u32>(32u))));
    global0 = array<vec4<bool>, 3>();
    let var_3 = vec4<u32>(1u, ~(u_input.a.x << (_wgslsmith_div_u32(var_1.c.x, 14388u ^ u_input.a.x) % 32u)), abs(u_input.a.x), ~(~1u));
    let var_4 = ~var_1.c.x;
    var_2 = vec4<i32>(var_2.x, -_wgslsmith_dot_vec2_i32(global1[_wgslsmith_index_u32(4294967295u, 32u)], vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-825i, global2.a.e.x), vec2<i32>(var_1.e.x, 1i)), abs(var_1.e.x))), _wgslsmith_mult_i32(~global2.a.e.x, -var_1.e.x), abs(0i));
    let x = u_input.a;
    s_output = StorageBuffer(global2.c.b, -var_2.x);
}

