struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec2<bool>, arg_1: bool, arg_2: Struct_1, arg_3: vec3<f32>) -> u32 {
    global0 = arg_2;
    var var_0 = ~(~(~vec4<u32>(arg_2.a.x, 0u, global0.a.x, global0.a.x)) << (vec4<u32>(abs(arg_2.a.x) ^ (global0.a.x | global0.a.x), abs(~602u), 0u, 4294967295u) % vec4<u32>(32u)));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(global0.c)), _wgslsmith_f_op_f32(-2234f + 1000f), _wgslsmith_div_f32(-2712f, arg_2.c), 1034f) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.x, 557f, arg_2.c, 419f) - vec4<f32>(arg_3.x, arg_2.c, -542f, global0.c)))))) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-740f - global0.c), arg_2.c)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-204f, 1444f)), _wgslsmith_f_op_f32(f32(-1f) * -978f))), 154f, global0.c))));
    let var_2 = _wgslsmith_mult_vec4_i32(vec4<i32>(select(-49079i, -arg_2.b, false), global0.b, -27614i, arg_2.b), reverseBits(~vec4<i32>(-2147483647i, global0.b, u_input.c, arg_2.b))) & _wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-global0.b, _wgslsmith_div_i32(-43697i, -1i), _wgslsmith_sub_i32(global0.b, u_input.a), -27438i), countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, 0i, 45570i, -19916i), vec4<i32>(1i, arg_2.b, -2147483647i, global0.b))), ~_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, -1i, 4784i, 0i), vec4<i32>(-2147483647i, 20302i, 1i, u_input.c))), vec4<i32>(~28790i, 2147483647i, u_input.a, global0.b));
    let var_3 = ~_wgslsmith_add_u32(59279u, ~67550u);
    return arg_2.a.x;
}

fn func_2(arg_0: i32, arg_1: vec2<f32>) -> f32 {
    let var_0 = Struct_1(vec3<u32>(1u, func_3(vec2<bool>(true, true), false, Struct_1(global0.a, -u_input.a, 1828f), vec3<f32>(_wgslsmith_f_op_f32(sign(arg_1.x)), global0.c, _wgslsmith_f_op_f32(489f * -180f))), 18444u), global0.b | arg_0, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-311f + arg_1.x)))))));
    global0 = Struct_1(global0.a >> (vec3<u32>(40862u, var_0.a.x, ~u_input.b.x | 1u) % vec3<u32>(32u)), u_input.a, _wgslsmith_f_op_f32(-global0.c));
    global0 = Struct_1(countOneBits(~global0.a), countOneBits(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(0i, var_0.b, u_input.c), vec3<i32>(arg_0, 8083i, -1i)), select(vec3<i32>(-2147483647i, -5343i, arg_0), vec3<i32>(arg_0, 16414i, -1i), vec3<bool>(false, true, true))), ~(~global0.b))), global0.c);
    let var_1 = Struct_1(~(~(~u_input.b >> (global0.a % vec3<u32>(32u)))), firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(reverseBits(-1i), _wgslsmith_mod_i32(-1i, u_input.a), -1i), ~vec3<i32>(arg_0, -111596i, var_0.b) << (var_0.a % vec3<u32>(32u)))), _wgslsmith_f_op_f32(global0.c + arg_1.x));
    global0 = var_0;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1366f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1858f, 642f)))))));
}

fn func_1(arg_0: Struct_1) -> f32 {
    let var_0 = !(arg_0.c > _wgslsmith_f_op_f32(376f - 1195f));
    global0 = Struct_1(vec3<u32>(53570u, global0.a.x, 2543u >> ((arg_0.a.x ^ global0.a.x) % 32u)), arg_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(1i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.c, -1586f)))))));
    let var_1 = arg_0;
    global0 = var_1;
    global0 = var_1;
    return global0.c;
}

fn func_4(arg_0: vec2<f32>, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    global0 = Struct_1(arg_2.a, 9537i, arg_3.c);
    global0 = Struct_1(arg_3.a, -2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(299f)))));
    let var_0 = global0.b;
    global0 = arg_3;
    let var_1 = arg_1;
    return Struct_1(~((~arg_2.a ^ countOneBits(u_input.b)) << (~u_input.b % vec3<u32>(32u))), arg_2.b, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c) + arg_0.x), 826f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_1(Struct_1(vec3<u32>(u_input.b.x, 14075u, 96435u), u_input.a, global0.c))), _wgslsmith_f_op_f32(f32(-1f) * -439f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.c, global0.c) - vec2<f32>(-834f, global0.c)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.c, global0.c) + vec2<f32>(global0.c, -1042f)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_1(Struct_1(global0.a, u_input.c, global0.c))), _wgslsmith_f_op_f32(trunc(131f))))), u_input.b.x, Struct_1(vec3<u32>(_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(global0.a.x, 4294967295u, u_input.b.x)), countOneBits(vec3<u32>(1u, u_input.b.x, global0.a.x))), u_input.b.x, u_input.b.x), u_input.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, global0.b), vec2<i32>(-17536i, global0.b)), _wgslsmith_div_vec2_f32(vec2<f32>(global0.c, 130f), vec2<f32>(global0.c, -1000f)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global0.c, 346f)), _wgslsmith_f_op_f32(-global0.c)))), Struct_1(~min(u_input.b, u_input.b) >> (_wgslsmith_div_vec3_u32(global0.a, vec3<u32>(68922u, 4294967295u, global0.a.x)) % vec3<u32>(32u)), 37643i, _wgslsmith_f_op_f32(-global0.c)));
    let var_0 = vec3<u32>(u_input.b.x, ~0u, min(~(~firstTrailingBit(u_input.b.x)), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(abs(vec4<u32>(u_input.b.x, u_input.b.x, 1u, 25552u)), ~vec4<u32>(u_input.b.x, 4294967295u, 4294967295u, 6194u)), vec4<u32>(global0.a.x, _wgslsmith_add_u32(62943u, 41776u), ~u_input.b.x, 0u))));
    let var_1 = 40946u;
    global0 = Struct_1(_wgslsmith_mod_vec3_u32(var_0, vec3<u32>(4294967295u, global0.a.x, ~67238u)), 8533i | ~(~u_input.c), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.c), -141f)));
    var var_2 = true;
    let var_3 = Struct_1(vec3<u32>(_wgslsmith_mod_u32(0u << (~var_1 % 32u), global0.a.x), var_1, u_input.b.x), 41464i, global0.c);
    let x = u_input.a;
    s_output = StorageBuffer(1u, vec2<f32>(global0.c, var_3.c), 1562f);
}

