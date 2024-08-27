struct Struct_1 {
    a: bool,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: f32,
    c: vec4<f32>,
    d: Struct_2,
}

struct Struct_5 {
    a: bool,
    b: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 24>;

var<private> global1: vec2<u32>;

var<private> global2: array<i32, 3>;

var<private> global3: i32;

var<private> global4: array<vec3<u32>, 31>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>) -> f32 {
    let var_0 = !vec3<bool>(arg_0.c, arg_0.a & arg_0.a, arg_0.c);
    global4 = array<vec3<u32>, 31>();
    global4 = array<vec3<u32>, 31>();
    var var_1 = Struct_2(arg_0, Struct_1(any(select(select(var_0.zz, var_0.xy, arg_0.c), vec2<bool>(arg_0.a, arg_0.a), vec2<bool>(var_0.x, false))), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(_wgslsmith_sub_i32(global2[_wgslsmith_index_u32(4294967295u, 3u)], -1i), -1224i), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, 1u), 3u)] ^ -2147483647i, _wgslsmith_dot_vec2_i32(~vec2<i32>(-1i, global0[_wgslsmith_index_u32(u_input.c, 24u)]), -vec2<i32>(arg_0.b, 0i))), true), ~_wgslsmith_mod_vec2_u32(~min(arg_1, vec2<u32>(arg_1.x, global1.x)), vec2<u32>(33422u, global1.x)), arg_0);
    global0 = array<i32, 24>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -376f));
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_1) -> i32 {
    global2 = array<i32, 3>();
    var var_0 = _wgslsmith_f_op_f32(select(-761f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(arg_1, ~(vec2<u32>(arg_0.x, 1u) >> (vec2<u32>(25996u, 0u) % vec2<u32>(32u)))))), all(!(!(!vec2<bool>(arg_1.a, arg_1.a))))));
    let var_1 = Struct_2(Struct_1(!any(vec4<bool>(true, true, arg_1.a, true)), _wgslsmith_add_i32(-2147483647i, ~(-10739i)), true), arg_1, vec2<u32>(arg_0.x, ~reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, 6477u, arg_0.x, 1u), vec4<u32>(arg_0.x, 8951u, 0u, arg_0.x)))), arg_1);
    global1 = ~(~vec2<u32>(var_1.c.x, _wgslsmith_div_u32(1u, 4294967295u)));
    var var_2 = 16310u;
    return 17917i;
}

fn func_1(arg_0: vec3<f32>, arg_1: vec3<i32>, arg_2: Struct_3, arg_3: i32) -> u32 {
    var var_0 = arg_2.b.xx;
    let var_1 = firstTrailingBit(_wgslsmith_sub_i32(_wgslsmith_add_i32(func_2(global4[_wgslsmith_index_u32(var_0.x, 31u)], Struct_1(false, 0i, true)) & global0[_wgslsmith_index_u32(abs(13150u), 24u)], _wgslsmith_mult_i32(_wgslsmith_add_i32(arg_3, u_input.d.x), min(-33609i, 1i))), _wgslsmith_dot_vec3_i32(arg_1, _wgslsmith_mod_vec3_i32(vec3<i32>(arg_3, 1i, u_input.d.x), arg_1) & arg_1)));
    global1 = arg_2.c.c;
    let var_2 = var_1;
    var var_3 = Struct_4(_wgslsmith_mod_u32(5564u | var_0.x, 0u), _wgslsmith_f_op_f32(arg_2.a.x * arg_0.x), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.x)))), _wgslsmith_f_op_f32(abs(arg_0.x)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(exp2(arg_0.x))))), arg_0.x), arg_2.c);
    return 24818u;
}

fn func_4(arg_0: vec2<u32>, arg_1: vec4<u32>) -> vec2<bool> {
    global1 = arg_1.yx;
    let var_0 = 4294967295u;
    var var_1 = Struct_5(any(vec2<bool>(false, true)), Struct_4(global1.x ^ _wgslsmith_mod_u32(~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, var_0, 0u, 1u), vec4<u32>(arg_0.x, arg_0.x, 4899u, 4294967295u))), -908f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1000f, 526f, 1019f, -1978f))))), Struct_2(Struct_1(false, abs(u_input.b), true), Struct_1(true, _wgslsmith_mod_i32(23091i, global0[_wgslsmith_index_u32(88920u, 24u)]), true), select(arg_1.wx, vec2<u32>(u_input.c, 4294967295u), false) ^ reverseBits(vec2<u32>(6907u, u_input.c)), Struct_1(arg_0.x > arg_0.x, ~(-19038i), true))));
    global4 = array<vec3<u32>, 31>();
    let var_2 = 0u;
    return vec2<bool>(any(select(!vec4<bool>(var_1.b.d.d.a, var_1.a, var_1.b.d.b.a, var_1.b.d.a.a), !select(vec4<bool>(true, true, var_1.a, var_1.b.d.a.c), vec4<bool>(var_1.b.d.b.a, false, false, var_1.b.d.b.a), var_1.a), !vec4<bool>(var_1.a, var_1.b.d.d.c, false, var_1.b.d.b.c))), var_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = ~(-2147483647i);
    global0 = array<i32, 24>();
    var var_0 = vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(min(vec2<i32>(-2147483647i, 0i), vec2<i32>(51967i, u_input.b)), vec2<i32>(13465i, global0[_wgslsmith_index_u32(u_input.a, 24u)])), vec2<i32>(-global2[_wgslsmith_index_u32(global1.x, 3u)], global0[_wgslsmith_index_u32(~0u, 24u)])), u_input.d), ~(i32(-1i) * -(-29392i | u_input.d.x)), -firstLeadingBit(-63726i));
    let var_1 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-490f, _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1624f, -526f))), vec2<f32>(335f, _wgslsmith_f_op_f32(-872f - -807f))))), func_4(firstTrailingBit(vec2<u32>(~80123u, func_1(vec3<f32>(-1594f, -2027f, -469f), vec3<i32>(26394i, global2[_wgslsmith_index_u32(1u, 3u)], 2147483647i), Struct_3(vec2<f32>(198f, -1692f), vec3<u32>(1929u, 40698u, 4294967295u), Struct_2(Struct_1(true, -2147483647i, false), Struct_1(false, u_input.d.x, false), vec2<u32>(u_input.c, global1.x), Struct_1(false, var_0.x, false))), global2[_wgslsmith_index_u32(u_input.c, 3u)]))), vec4<u32>(global1.x, _wgslsmith_dot_vec3_u32(global4[_wgslsmith_index_u32(43904u, 31u)] & vec3<u32>(u_input.c, 0u, 65317u), global4[_wgslsmith_index_u32(global1.x, 31u)]), 21315u, global1.x))));
    let var_2 = select(vec4<i32>(2147483647i, ~max(var_0.x, 0i) << (_wgslsmith_clamp_u32(~global1.x, _wgslsmith_mod_u32(1u, u_input.a), ~4294967295u) % 32u), _wgslsmith_sub_i32(var_0.x, ~firstTrailingBit(-9125i)), ~max(global2[_wgslsmith_index_u32(90715u, 3u)], 353i) >> (_wgslsmith_mod_u32(~1u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 76553u), vec3<u32>(23712u, 0u, u_input.c))) % 32u)), -vec4<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.b, u_input.d.x, global0[_wgslsmith_index_u32(43446u, 24u)]), vec4<i32>(var_0.x, 40470i, 59686i, 8624i)), 33292i, -u_input.d.x, -(var_0.x << (global1.x % 32u))), !(!select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), true))));
    let var_3 = _wgslsmith_f_op_f32(abs(var_1.x));
    var var_4 = vec2<i32>(-1i, select(-1i, var_0.x, ~1u <= (1u ^ firstTrailingBit(global1.x))));
    global0 = array<i32, 24>();
    global4 = array<vec3<u32>, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(~min(reverseBits(_wgslsmith_clamp_u32(u_input.c, 0u, global1.x)), _wgslsmith_sub_u32(107120u, 23641u & global1.x)), select(max(max(global1.x << (u_input.a % 32u), u_input.a), ~(~11147u)), 93011u, true), abs(~vec2<i32>(abs(1i), -var_2.x)), firstTrailingBit(firstTrailingBit(var_2.wzw) >> (vec3<u32>(firstLeadingBit(38354u), 1u << (1u % 32u), _wgslsmith_div_u32(0u, 1u)) % vec3<u32>(32u))));
}

