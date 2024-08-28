struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 31>;

var<private> global1: array<Struct_2, 14>;

var<private> global2: array<Struct_2, 3>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: f32, arg_1: vec3<f32>, arg_2: bool, arg_3: i32) -> i32 {
    var var_0 = abs(1u);
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1835f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(arg_0)), -1580f, arg_2)));
    var var_2 = Struct_1(17214u, ~_wgslsmith_div_vec3_u32(firstLeadingBit(abs(vec3<u32>(45337u, 0u, 0u))), abs(vec3<u32>(0u, 0u, u_input.b) << (vec3<u32>(45622u, 51672u, u_input.b) % vec3<u32>(32u)))), vec2<bool>(!arg_2, true));
    return 0i;
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> bool {
    let var_0 = global1[_wgslsmith_index_u32(firstLeadingBit(3554u), 14u)];
    var var_1 = any(vec4<bool>(var_0.a.c.x, true, ~arg_0.b.x < u_input.b, true)) | (u_input.a <= func_3(-1152f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, -541f, arg_1)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-371f, arg_1, -1277f) * vec3<f32>(arg_1, arg_1, 760f))), !(arg_0.c.x && false), u_input.a));
    global1 = array<Struct_2, 14>();
    global1 = array<Struct_2, 14>();
    let var_2 = firstLeadingBit(_wgslsmith_sub_vec4_i32(abs(vec4<i32>(2147483647i, -10002i >> (var_0.a.b.x % 32u), ~(-44684i), global0[_wgslsmith_index_u32(4294967295u, 31u)] >> (u_input.b % 32u))), abs(_wgslsmith_add_vec4_i32(-vec4<i32>(u_input.a, u_input.c, 2147483647i, global0[_wgslsmith_index_u32(0u, 31u)]), vec4<i32>(-30337i, u_input.a, -2147483647i, u_input.a)))));
    return ~1u != _wgslsmith_dot_vec3_u32(~var_0.a.b, vec3<u32>(51536u, max(var_0.a.b.x, 1460u) ^ var_0.a.b.x, _wgslsmith_mod_u32(~11688u, var_0.a.b.x)));
}

fn func_1() -> u32 {
    global1 = array<Struct_2, 14>();
    let var_0 = _wgslsmith_add_vec4_u32(~_wgslsmith_mult_vec4_u32(~vec4<u32>(253u, u_input.b, u_input.b, 1u), ~vec4<u32>(4294967295u, u_input.b, u_input.b, u_input.b)), ~vec4<u32>(4294967295u >> (u_input.b % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<u32>(0u, 0u, 3748u, u_input.b)), u_input.b, u_input.b)) >> (select(vec4<u32>(select(1u, u_input.b, true) >> (~u_input.b % 32u), _wgslsmith_mult_u32(~u_input.b, u_input.b | 1u), (0u & u_input.b) >> (u_input.b % 32u), reverseBits(44147u)), ~firstLeadingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, 0u, u_input.b, u_input.b), vec4<u32>(u_input.b, 21141u, 0u, 48427u))), true) % vec4<u32>(32u));
    var var_1 = vec2<bool>(true, any(vec4<bool>(func_2(Struct_1(59582u, var_0.yxw, vec2<bool>(false, true)), _wgslsmith_f_op_f32(-1124f + 803f)), true, all(vec2<bool>(true, true)), true)));
    let var_2 = select(_wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, u_input.c), _wgslsmith_add_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(abs(u_input.b), 31u)], global0[_wgslsmith_index_u32(1u, 31u)] >> (var_0.x % 32u)), select(vec2<i32>(global0[_wgslsmith_index_u32(u_input.b, 31u)], 14266i), vec2<i32>(-6752i, global0[_wgslsmith_index_u32(0u, 31u)]), vec2<bool>(var_1.x, false)) | vec2<i32>(-9688i, u_input.c))), vec2<i32>(~(global0[_wgslsmith_index_u32(var_0.x, 31u)] | 10779i), _wgslsmith_div_i32(-17650i, abs(global0[_wgslsmith_index_u32(u_input.b, 31u)]))) ^ (countOneBits(vec2<i32>(0i, 19772i)) | min(_wgslsmith_mult_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(u_input.b, 31u)], 0i), vec2<i32>(8311i, 6530i)), _wgslsmith_div_vec2_i32(vec2<i32>(0i, global0[_wgslsmith_index_u32(u_input.b, 31u)]), vec2<i32>(global0[_wgslsmith_index_u32(1u, 31u)], 19028i)))), true);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-2318f - _wgslsmith_f_op_f32(f32(-1f) * -375f)))) - _wgslsmith_f_op_f32(-251f - -1000f));
    return ~(~var_0.x | 1u) >> (select(firstLeadingBit(countOneBits(var_0.x >> (20389u % 32u))), u_input.b, true) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global2 = array<Struct_2, 3>();
    global0 = array<i32, 31>();
    var var_1 = Struct_1(select(u_input.b, 1u, ~63857u <= (_wgslsmith_mult_u32(1u, 41471u) << (u_input.b % 32u))), ~vec3<u32>(u_input.b, 1u, 4294967295u), !select(vec2<bool>(true, true), vec2<bool>(true, true), true));
    var var_2 = ~_wgslsmith_dot_vec4_u32(max(firstLeadingBit(reverseBits(vec4<u32>(var_1.a, 107495u, 92934u, 3037u))), max(_wgslsmith_add_vec4_u32(vec4<u32>(80557u, var_1.b.x, var_1.a, 4294967295u), vec4<u32>(18439u, u_input.b, var_1.b.x, var_1.a)), _wgslsmith_sub_vec4_u32(vec4<u32>(6794u, 0u, var_1.b.x, u_input.b), vec4<u32>(var_1.b.x, u_input.b, 77645u, 20374u)))), ~(~(vec4<u32>(0u, 1u, 71222u, 11943u) >> (vec4<u32>(0u, u_input.b, u_input.b, u_input.b) % vec4<u32>(32u)))));
    let var_3 = _wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(ceil(-196f))));
    let x = u_input.a;
    s_output = StorageBuffer(-global0[_wgslsmith_index_u32(min(var_1.b.x, _wgslsmith_div_u32(u_input.b, u_input.b)), 31u)], ~(~(~(var_1.b >> (vec3<u32>(0u, 27171u, 70150u) % vec3<u32>(32u))))), vec2<i32>(~(-18031i), _wgslsmith_sub_i32(u_input.c, ~(u_input.a & -1i))));
}

