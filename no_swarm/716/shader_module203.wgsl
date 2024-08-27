struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec2<u32>,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 4>;

var<private> global1: array<Struct_3, 29>;

var<private> global2: array<i32, 17>;

var<private> global3: Struct_2 = Struct_2(Struct_1(vec2<i32>(9475i, i32(-2147483648)), 4294967295u, vec4<f32>(163f, 815f, -937f, 404f)), vec3<bool>(true, false, false), vec2<u32>(0u, 57982u));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec2<bool> {
    let var_0 = max(~_wgslsmith_add_i32(~global3.a.a.x >> (abs(58830u) % 32u), -_wgslsmith_mod_i32(10313i, global3.a.a.x)), global2[_wgslsmith_index_u32(u_input.b, 17u)]);
    global3 = Struct_2(Struct_1(u_input.a.yz, 58951u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1508f, 1929f, -739f, -474f) - global3.a.c) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(global3.a.c)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.a.c.x, global3.a.c.x, global3.a.c.x, global3.a.c.x) * global3.a.c))))), select(global3.b, vec3<bool>(global3.b.x, any(vec3<bool>(global3.b.x, global3.b.x, global0[_wgslsmith_index_u32(61664u, 4u)])), (global2[_wgslsmith_index_u32(global3.a.b, 17u)] << (26748u % 32u)) == 1i), !vec3<bool>(global3.b.x, !global3.b.x, true)), ~abs(vec2<u32>(u_input.b, ~5140u)));
    let var_1 = vec3<bool>(any(global3.b.xz), !(true == (0u <= global3.c.x)), all(select(global3.b, global3.b, global3.b.x & global0[_wgslsmith_index_u32(7803u, 4u)])) || false);
    global0 = array<bool, 4>();
    var var_2 = ~global3.c.x;
    return !vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global3.a.c.x)) * _wgslsmith_f_op_f32(ceil(-136f))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.a.c.x * 971f)), global3.c.x != ~max(global3.a.b, global3.a.b));
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: Struct_3, arg_3: Struct_2) -> bool {
    let var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(1u, _wgslsmith_mult_u32(arg_0, ~arg_3.a.b ^ 68179u), 4294967295u, arg_2.a), firstLeadingBit(vec4<u32>(global3.a.b, arg_0, 1u, 0u >> (max(global3.a.b, 4294967295u) % 32u))));
    var var_1 = -u_input.a.zww;
    var var_2 = global1[_wgslsmith_index_u32(abs(42401u), 29u)];
    var var_3 = Struct_3(0u);
    let var_4 = arg_3;
    return all(select(vec2<bool>(true & !arg_3.b.x, all(select(vec3<bool>(arg_3.b.x, false, arg_1), var_4.b, global3.b.x))), func_3(), var_4.b.zz));
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: f32) -> Struct_1 {
    let var_0 = Struct_1(global3.a.a, reverseBits(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.c.x, arg_0, 76929u), vec3<u32>(1u, arg_0, 4294967295u)), 1u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 4294967295u, u_input.b, 7393u), vec4<u32>(0u, 4294967295u, global3.c.x, arg_1.c.x)))), vec4<f32>(_wgslsmith_f_op_f32(arg_3 + _wgslsmith_f_op_f32(f32(-1f) * -1806f)), 1739f, global3.a.c.x, 1f));
    let var_1 = var_0.a.x;
    var var_2 = vec4<bool>(_wgslsmith_mod_i32(max(firstLeadingBit(arg_2.x), 3847i), min(arg_2.x, 1i) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.a.a.x, 41989i, -63831i, 54236i), vec4<i32>(-1i, arg_2.x, -1232i, 1i))) <= min(_wgslsmith_sub_i32(~1i, i32(-1i) * -21034i), 1i), reverseBits(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b, 0u, 30534u), ~vec3<u32>(arg_0, 48000u, 84272u)), 17u)]) >= 12138i, global0[_wgslsmith_index_u32(~(~countOneBits(1u)), 4u)], false & (any(global3.b.yx) | true));
    global3 = arg_1;
    global1 = array<Struct_3, 29>();
    return Struct_1(firstTrailingBit(~(-(~vec2<i32>(arg_2.x, -2147483647i)))), max(33129u, ~u_input.b), arg_1.a.c);
}

fn func_1(arg_0: vec4<bool>) -> Struct_3 {
    let var_0 = func_4(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b & u_input.b, u_input.b ^ 48171u), vec2<u32>(~global3.c.x, _wgslsmith_mod_u32(0u, u_input.b))), ~abs(~17947u)), Struct_2(global3.a, select(select(global3.b, vec3<bool>(true, global3.b.x, global0[_wgslsmith_index_u32(u_input.b, 4u)]), func_2(72208u, global3.b.x, Struct_3(70468u), Struct_2(global3.a, vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec2<u32>(0u, global3.a.b)))), global3.b, func_3().x), ~global3.c), u_input.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global3.a.c.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.a.c.x + 1086f))))));
    global1 = array<Struct_3, 29>();
    var var_1 = -countOneBits(_wgslsmith_div_i32(-2147483647i, 10536i) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(43607i, u_input.a.x, -42875i), countOneBits(u_input.a.wxx)));
    let var_2 = vec2<i32>(_wgslsmith_clamp_i32(select(2147483647i, -59275i, true) & _wgslsmith_dot_vec3_i32(u_input.a.xzx, vec3<i32>(37994i, 34133i, u_input.a.x)), _wgslsmith_mult_i32(select(-35683i, 46807i, false), _wgslsmith_div_i32(global2[_wgslsmith_index_u32(var_0.b, 17u)], -2147483647i)), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(global3.a.a, vec2<i32>(1i, -26956i)), reverseBits(vec2<i32>(var_0.a.x, 0i)))), _wgslsmith_dot_vec3_i32(reverseBits(u_input.a.yxx), _wgslsmith_add_vec3_i32(firstTrailingBit(u_input.a.xww), vec3<i32>(1i, global3.a.a.x, var_0.a.x)))) & -_wgslsmith_mod_vec2_i32(vec2<i32>(1i, ~global2[_wgslsmith_index_u32(74262u, 17u)]), _wgslsmith_sub_vec2_i32(max(global3.a.a, vec2<i32>(-35803i, 0i)), var_0.a & vec2<i32>(global2[_wgslsmith_index_u32(global3.a.b, 17u)], -12865i)));
    let var_3 = Struct_3(_wgslsmith_sub_u32(~(~0u), max(72995u, u_input.b)) >> (u_input.b % 32u));
    return Struct_3(~(~func_4(~u_input.b, Struct_2(Struct_1(vec2<i32>(16325i, global2[_wgslsmith_index_u32(var_3.a, 17u)]), u_input.b, vec4<f32>(global3.a.c.x, var_0.c.x, -2175f, global3.a.c.x)), vec3<bool>(true, true, false), vec2<u32>(global3.a.b, 4294967295u)), vec4<i32>(u_input.a.x, var_2.x, var_0.a.x, 106873i), _wgslsmith_div_f32(global3.a.c.x, -1363f)).b));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2, arg_2: f32, arg_3: vec4<i32>) -> Struct_1 {
    let var_0 = vec2<u32>(_wgslsmith_dot_vec2_u32(~global3.c & ~global3.c, ~firstTrailingBit(global3.c)), firstLeadingBit(global3.c.x << (1u % 32u)) >> (_wgslsmith_clamp_u32(arg_0.a << (26215u % 32u), ~1u, global3.a.b) % 32u)) | ~(~vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a, u_input.b, 12341u, arg_0.a), vec4<u32>(global3.a.b, arg_1.a.b, arg_1.c.x, global3.c.x)), ~33265u));
    return func_4(arg_0.a, arg_1, u_input.a, _wgslsmith_f_op_f32(f32(-1f) * -447f));
}

fn func_6(arg_0: Struct_1, arg_1: i32) -> vec2<i32> {
    global2 = array<i32, 17>();
    return (u_input.a.ww | vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(global3.a.a.x, global3.a.a.x), vec2<i32>(global2[_wgslsmith_index_u32(u_input.b, 17u)], 1i)), -57689i), 2015i)) >> (_wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(reverseBits(firstLeadingBit(vec2<u32>(4294967295u, 20333u))), _wgslsmith_mod_vec2_u32(firstTrailingBit(vec2<u32>(arg_0.b, 1u)), vec2<u32>(12770u, u_input.b))), ~(~global3.c), vec2<u32>(~69771u, select(arg_0.b, arg_0.b, true))) % vec2<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(~(~abs(u_input.b & 68808u)), ~func_6(func_5(func_1(vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 4u)], global3.b.x, true, true)), Struct_2(Struct_1(u_input.a.yw, global3.c.x, vec4<f32>(global3.a.c.x, 1465f, -1167f, global3.a.c.x)), vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.b, 4u)], false), vec2<u32>(global3.a.b, 70730u)), _wgslsmith_f_op_f32(exp2(global3.a.c.x)), max(vec4<i32>(global2[_wgslsmith_index_u32(global3.c.x, 17u)], u_input.a.x, global3.a.a.x, global3.a.a.x), u_input.a)), 1i), u_input.a.zz & u_input.a.xw, ~firstLeadingBit(_wgslsmith_div_u32(global3.a.b | 24825u, 1u)));
}

