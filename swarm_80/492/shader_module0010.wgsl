struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: vec3<bool>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<bool>,
    c: u32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: i32,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 32>;

var<private> global1: Struct_1;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: f32, arg_1: Struct_4, arg_2: vec2<u32>) -> vec4<i32> {
    var var_0 = Struct_3(Struct_2(global1.a.x, vec4<bool>(false, global1.c.x, global1.c.x, true), ~1u << (abs(firstLeadingBit(4294967295u)) % 32u)));
    global0 = array<Struct_5, 32>();
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(307f))), global1.a.x)), -1019f));
    var var_2 = Struct_5(arg_1);
    var_1 = vec3<f32>(-143f, -230f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1531f, _wgslsmith_f_op_f32(arg_0 + var_0.a.a))) * -2329f));
    return reverseBits(abs(u_input.c));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_5) -> u32 {
    var var_0 = global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(reverseBits(68264u >> (arg_1.a.a % 32u)) ^ ~(arg_1.a.a | 21571u), u_input.a.x, _wgslsmith_sub_u32(u_input.a.x, 1u)), 32u)];
    var var_1 = _wgslsmith_mult_vec2_u32(select(vec2<u32>(4294967295u, ~_wgslsmith_mod_u32(arg_1.a.a, 31051u)), _wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(4294967295u, var_0.a.a, 73162u), u_input.a.x), u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1.a.x, 725f))) >= 645f), ~(~(vec2<u32>(var_0.a.a, 102276u) & vec2<u32>(arg_1.a.a, u_input.a.x))));
    var var_2 = 105456u >= firstTrailingBit(0u);
    var var_3 = u_input.c;
    var var_4 = Struct_2(_wgslsmith_f_op_f32(global1.a.x * _wgslsmith_f_op_f32(min(arg_0.a.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.a.x * global1.a.x)))))), vec4<bool>(true || global1.c.x, arg_0.c.x, ~1u <= var_0.a.a, true), 47286u);
    return _wgslsmith_add_u32(_wgslsmith_add_u32(~(min(var_1.x, var_4.c) >> ((var_1.x >> (22815u % 32u)) % 32u)), ~reverseBits(arg_1.a.a)), _wgslsmith_mult_u32(_wgslsmith_mult_u32(49089u, _wgslsmith_clamp_u32(~21282u, u_input.a.x, countOneBits(0u))), var_1.x));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec2<i32>, arg_2: bool) -> StorageBuffer {
    global1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1133f), _wgslsmith_f_op_f32(-global1.a.x)))), _wgslsmith_div_f32(-887f, global1.a.x), global1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1071f, -653f))))), countOneBits(~(_wgslsmith_div_i32(arg_1.x, 0i) ^ _wgslsmith_mult_i32(global1.d.x, global1.d.x))), vec3<bool>(true, true, global1.c.x), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1698f, 244f))), Struct_4(firstTrailingBit(u_input.a.x) ^ 54585u, u_input.b), reverseBits(_wgslsmith_div_vec2_u32(reverseBits(u_input.a), vec2<u32>(u_input.a.x, 69569u)))));
    let var_0 = vec2<bool>(true, true);
    let var_1 = Struct_5(Struct_4(u_input.a.x, 12515i));
    global1 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-616f - -1000f)), global1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a.x * 227f) + _wgslsmith_f_op_f32(2492f + global1.a.x)), 1151f)), 1i, vec3<bool>(arg_0.x, _wgslsmith_f_op_f32(global1.a.x + 801f) > -584f, false), min(global1.d, _wgslsmith_add_vec4_i32(vec4<i32>(-6090i, 19365i, -global1.d.x, ~var_1.a.b), _wgslsmith_mult_vec4_i32(u_input.c, ~vec4<i32>(-1i, -54744i, 0i, arg_1.x)))));
    global0 = array<Struct_5, 32>();
    return StorageBuffer(_wgslsmith_f_op_f32(max(global1.a.x, -2245f)), select(countOneBits(var_1.a.a), func_3(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.x, 215f, global1.a.x, 207f)), 1i, !vec3<bool>(true, arg_2, true), -vec4<i32>(global1.d.x, 53096i, global1.b, global1.b)), var_1), all(select(!vec4<bool>(arg_0.x, arg_2, false, arg_2), vec4<bool>(true, arg_0.x, var_0.x, true), true))), _wgslsmith_clamp_u32(countOneBits(73298u), _wgslsmith_dot_vec3_u32(select(vec3<u32>(var_1.a.a, var_1.a.a, 1u), vec3<u32>(4294967295u, 13186u, var_1.a.a), vec3<bool>(arg_0.x, arg_0.x, arg_2)) | vec3<u32>(42634u, var_1.a.a, 57826u), ~vec3<u32>(76148u, u_input.a.x, 4294967295u) << (firstTrailingBit(vec3<u32>(var_1.a.a, 4294967295u, 4294967295u)) % vec3<u32>(32u))), select(var_1.a.a, countOneBits(~var_1.a.a), (0u >> (var_1.a.a % 32u)) <= ~u_input.a.x)), min(select(-vec3<i32>(global1.d.x, global1.d.x, 2147483647i), vec3<i32>(arg_1.x, global1.b, 1i), select(global1.c, vec3<bool>(global1.c.x, true, true), arg_0)), global1.d.zzz | ~global1.d.wzz) & select(_wgslsmith_add_vec3_i32(global1.d.ywy, ~u_input.c.wxy), ~(u_input.c.xxy >> (vec3<u32>(u_input.a.x, 1u, u_input.a.x) % vec3<u32>(32u))), any(global1.c.yz)), vec4<f32>(-1175f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(global1.a.x, global1.a.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(-global1.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1086f) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1980f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(~(~35589i), 1i);
    var_0 = ~vec2<i32>(u_input.c.x, 1i);
    var_0 = vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(u_input.c.yz, -vec2<i32>(u_input.b, 2858i)), _wgslsmith_div_vec2_i32(global1.d.wx, -vec2<i32>(global1.b, 71111i))), 0i), var_0.x);
    var var_1 = global1.a.x;
    var_0 = global1.d.wy;
    let x = u_input.a;
    s_output = func_1(vec3<bool>(any(!select(vec2<bool>(false, false), vec2<bool>(global1.c.x, global1.c.x), vec2<bool>(false, false))), global1.c.x, true), _wgslsmith_add_vec2_i32(countOneBits(global1.d.xz), abs(vec2<i32>(select(0i, 2147483647i, global1.c.x), ~(-2147483647i)))), global1.c.x);
}

