struct Struct_1 {
    a: bool,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec2<i32>,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_2,
}

struct Struct_5 {
    a: vec3<i32>,
    b: u32,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 3> = array<u32, 3>(59780u, 0u, 0u);

var<private> global1: f32 = -2846f;

var<private> global2: vec4<f32>;

var<private> global3: Struct_1;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec3<i32> {
    var var_0 = 25554u;
    var var_1 = firstTrailingBit(vec4<u32>(~28728u, min(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(9114u, 1u), 3u)], _wgslsmith_add_u32(u_input.e, 57909u)), global0[_wgslsmith_index_u32(abs(1u), 3u)], 64001u)) | countOneBits(firstTrailingBit(max(max(vec4<u32>(6771u, u_input.c.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(116205u, 3u)], 3u)], 4294967295u), vec4<u32>(global0[_wgslsmith_index_u32(12080u, 3u)], global3.c, 0u, 1u)), vec4<u32>(0u, global3.c, global3.c, global3.c))));
    var var_2 = _wgslsmith_mult_vec4_i32(u_input.b, select(abs(-vec4<i32>(global3.b, 2147483647i, 0i, global3.b)), u_input.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(461f, 1254f)), _wgslsmith_f_op_f32(abs(global2.x))) == _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global2.x, -1337f)))));
    var var_3 = max(firstTrailingBit(~_wgslsmith_mod_u32(u_input.c.x, 1u) | 4294967295u), 52527u);
    var_1 = ~vec4<u32>(_wgslsmith_clamp_u32(u_input.c.x, ~(~u_input.e), _wgslsmith_mod_u32(_wgslsmith_div_u32(18172u, global0[_wgslsmith_index_u32(1u, 3u)]), _wgslsmith_clamp_u32(4294967295u, 2807u, 47831u))), ~_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, global0[_wgslsmith_index_u32(16373u, 3u)], var_1.x), var_1.ywx), ~vec3<u32>(64693u, global0[_wgslsmith_index_u32(global3.c, 3u)], 0u)), 5884u, abs(40594u) >> (_wgslsmith_div_u32(firstLeadingBit(10776u), 4294967295u) % 32u));
    return vec3<i32>(var_2.x, -1i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.x, -38783i, -6450i, ~u_input.b.x), _wgslsmith_div_vec4_i32(vec4<i32>(-21731i, 67249i, global3.b, u_input.b.x), ~u_input.a)) | ~global3.b);
}

fn func_4(arg_0: Struct_5, arg_1: u32, arg_2: Struct_3, arg_3: Struct_5) -> vec4<f32> {
    let var_0 = u_input.c;
    return _wgslsmith_div_vec4_f32(vec4<f32>(1050f, -1100f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2.x))) * global2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) * _wgslsmith_f_op_f32(-2516f - global2.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1653f)) + _wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(global2.x)))), global2.x)));
}

fn func_2(arg_0: vec4<u32>) -> Struct_5 {
    global0 = array<u32, 3>();
    var var_0 = u_input.d ^ -13894i;
    global0 = array<u32, 3>();
    global0 = array<u32, 3>();
    global2 = _wgslsmith_f_op_vec4_f32(func_4(Struct_5(func_3(), u_input.e, Struct_1(true, _wgslsmith_mod_i32(-18639i, ~1i), abs(u_input.e)), 1u), ~u_input.e, Struct_3(Struct_1(false, max(2147483647i, -2147483647i), reverseBits(4294967295u))), Struct_5(max(-u_input.b.xxz, vec3<i32>(u_input.b.x, func_3().x, -47825i)), global0[_wgslsmith_index_u32(countOneBits(3424u), 3u)], Struct_1(~49858u <= _wgslsmith_mod_u32(global3.c, 0u), global3.b, ~_wgslsmith_clamp_u32(1u, u_input.c.x, 0u)), u_input.e)));
    return Struct_5(vec3<i32>(_wgslsmith_mod_i32((i32(-1i) * -47790i) ^ global3.b, ~11510i), reverseBits(3918i), _wgslsmith_add_i32(u_input.b.x, _wgslsmith_div_i32(-global3.b, ~55124i))), (~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, arg_0.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.e, 3u)], 3u)]), u_input.c) | reverseBits(0u)) & _wgslsmith_add_u32(arg_0.x, 12822u), Struct_1(!select(global2.x <= -1246f, true, global3.a), -30212i, 4294967295u), 4294967295u);
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: f32) -> vec3<i32> {
    let var_0 = func_2(vec4<u32>(~0u, u_input.c.x, ~reverseBits(1u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u) >> (vec2<u32>(arg_0.c, arg_0.c) % vec2<u32>(32u)), firstLeadingBit(vec2<u32>(global0[_wgslsmith_index_u32(u_input.c.x, 3u)], 97322u)))));
    var var_1 = _wgslsmith_div_u32(abs(~select(~56721u, countOneBits(arg_1), global3.b <= 1i)), ~global3.c);
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1322f, 1000f, 968f, 333f) * vec4<f32>(arg_2, 1612f, 623f, 1457f))))));
    var var_2 = _wgslsmith_sub_vec4_i32(u_input.a, ~(_wgslsmith_sub_vec4_i32(u_input.b, u_input.b) | ~u_input.a) & vec4<i32>(u_input.b.x, select(~2147483647i, u_input.a.x, arg_0.a), -(~8219i), abs(-15283i)));
    var_1 = ~reverseBits(_wgslsmith_sub_u32(~var_0.c.c, ~(~1u)));
    return vec3<i32>(u_input.b.x, _wgslsmith_mult_i32(-15426i, 1i), _wgslsmith_div_i32(max(~select(-1i, var_0.c.b, var_0.c.a), -2147483647i), 0i));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 3>();
    global2 = vec4<f32>(global2.x, _wgslsmith_f_op_f32(-global2.x), global2.x, _wgslsmith_f_op_f32(-global2.x));
    var var_0 = Struct_5((vec3<i32>(global3.b | u_input.d, u_input.b.x, _wgslsmith_mod_i32(-1i, u_input.b.x)) & -func_1(Struct_1(global3.a, 1i, 47198u), 0u, global2.x)) << (~abs(~u_input.c) % vec3<u32>(32u)), _wgslsmith_sub_u32(func_2(_wgslsmith_sub_vec4_u32(select(vec4<u32>(global3.c, global3.c, 7164u, global3.c), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 3u)], 3u)], u_input.e, 43357u, 11443u), vec4<bool>(false, true, global3.a, true)), vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(62443u, 3u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global3.c, 3u)], 3u)], 0u) << (vec4<u32>(1u, global3.c, 0u, 0u) % vec4<u32>(32u)))).d, 15087u), Struct_1(global3.a, u_input.b.x, 0u), 75858u);
    var var_1 = -vec2<i32>(i32(-1i) * -17125i, -44705i);
    let var_2 = func_3().x;
    var var_3 = Struct_5(~_wgslsmith_mult_vec3_i32(vec3<i32>(1i, 40215i, 4467i), _wgslsmith_clamp_vec3_i32(var_0.a, ~vec3<i32>(u_input.b.x, 0i, u_input.a.x), vec3<i32>(0i, 1i, global3.b))), global3.c, var_0.c, 0u);
    let x = u_input.a;
    s_output = StorageBuffer(~(u_input.c.zx ^ u_input.c.xy), _wgslsmith_f_op_vec3_f32(-global2.zyw), -var_3.a, _wgslsmith_dot_vec4_u32(vec4<u32>(17861u ^ global0[_wgslsmith_index_u32(u_input.e, 3u)], global3.c | 4294967295u, reverseBits(var_0.b), abs(u_input.c.x)) ^ vec4<u32>(47624u, 4294967295u, _wgslsmith_clamp_u32(4294967295u, global3.c, 67599u), var_0.d << (var_0.b % 32u)), vec4<u32>(36386u, ~var_3.b, ~global0[_wgslsmith_index_u32(u_input.e, 3u)], 1u) >> (vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.c.yy, u_input.c.yy), 4294967295u, 0u, 2976u) % vec4<u32>(32u))));
}

