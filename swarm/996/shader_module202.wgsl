struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 3>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: u32) -> u32 {
    var var_0 = vec2<i32>(-12490i, ~(-_wgslsmith_mod_i32(-2147483647i, _wgslsmith_clamp_i32(-5941i, 25026i, 4969i))));
    global0 = array<u32, 3>();
    let var_1 = Struct_1(u_input.a, 29611u, u_input.a.x, true);
    var var_2 = Struct_2(~(~26425u), true, Struct_1(firstLeadingBit(~vec2<u32>(u_input.a.x, 3398u)) & ~(vec2<u32>(10052u, 1u) & u_input.a), _wgslsmith_dot_vec3_u32(vec3<u32>(53138u, 1u, ~4294967295u), ~select(vec3<u32>(1u, 0u, 0u), vec3<u32>(global0[_wgslsmith_index_u32(0u, 3u)], 23549u, 1u), vec3<bool>(true, true, var_1.d))), global0[_wgslsmith_index_u32(~(~_wgslsmith_sub_u32(1u, global0[_wgslsmith_index_u32(u_input.a.x, 3u)])), 3u)], false), u_input.a.x | (0u | ~_wgslsmith_div_u32(global0[_wgslsmith_index_u32(29638u, 3u)], u_input.a.x)));
    let var_3 = Struct_2(38362u, true, Struct_1(~(~firstTrailingBit(var_2.c.a)), ~var_2.d & 27018u, 0u, false), 1u);
    return countOneBits(~64925u) >> (~_wgslsmith_dot_vec4_u32(~(~vec4<u32>(18422u, 1u, 4294967295u, var_1.b)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(0u, 4294967295u, var_3.c.a.x, 4126u), _wgslsmith_add_vec4_u32(vec4<u32>(36611u, var_3.c.b, 4294967295u, 0u), vec4<u32>(13148u, global0[_wgslsmith_index_u32(1u, 3u)], 36649u, u_input.a.x)), countOneBits(vec4<u32>(4294967295u, 4294967295u, 43726u, 1u)))) % 32u);
}

fn func_2(arg_0: u32, arg_1: vec2<u32>, arg_2: i32, arg_3: bool) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -470f) + -840f))), -122f));
    var var_1 = Struct_2(global0[_wgslsmith_index_u32(4129u, 3u)] & ~func_3(arg_0), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-825f + _wgslsmith_f_op_f32(f32(-1f) * -1612f)))) < var_0, Struct_1(~arg_1, global0[_wgslsmith_index_u32(select(1u, ~arg_0, any(vec3<bool>(arg_3, arg_3, true))), 3u)], abs(u_input.a.x | _wgslsmith_mult_u32(0u, 30863u)), (!arg_3 & all(vec4<bool>(true, arg_3, true, arg_3))) && !(arg_3 & false)), arg_0);
    let var_2 = Struct_2(55527u, -1i < reverseBits(1i | ~arg_2), Struct_1(_wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(select(vec2<u32>(global0[_wgslsmith_index_u32(1u, 3u)], 58089u), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(103471u, 3u)], 3u)], var_1.d), vec2<bool>(true, arg_3)), vec2<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 3u)], var_1.c.a.x)), ~_wgslsmith_add_vec2_u32(vec2<u32>(35890u, global0[_wgslsmith_index_u32(arg_1.x, 3u)]), arg_1), (var_1.c.a ^ vec2<u32>(var_1.c.c, 12300u)) ^ _wgslsmith_div_vec2_u32(u_input.a, u_input.a)), u_input.a.x, reverseBits(~func_3(global0[_wgslsmith_index_u32(0u, 3u)])), select(true, all(!vec2<bool>(var_1.b, var_1.c.d)), true)), 1u);
    var var_3 = var_1.c.a.x;
    var_1 = var_2;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1032f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1048f))))) - _wgslsmith_f_op_f32(-var_0));
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = arg_1.d;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1170f, -656f))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2418f, 1527f))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-1000f * -1998f), _wgslsmith_f_op_f32(func_2(global0[_wgslsmith_index_u32(u_input.a.x, 3u)], arg_1.a, 55873i, var_0))))))));
    var var_2 = firstTrailingBit(firstLeadingBit(~(~_wgslsmith_mod_i32(2147483647i, -2147483647i))));
    let var_3 = arg_1.d;
    var var_4 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(-var_1.x)))), _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))), 1285f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + _wgslsmith_f_op_f32(-514f - 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -863f))))));
    return Struct_1(vec2<u32>(_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(arg_1.b, u_input.a.x, 15714u)), abs(vec3<u32>(arg_0, 1u, arg_0)) ^ abs(vec3<u32>(43272u, 46132u, 0u))), firstLeadingBit(~arg_1.b >> (25091u % 32u))), min(arg_0, ~(~arg_0)), ~4294967295u, true);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: u32, arg_3: u32) -> vec4<bool> {
    let var_0 = ~reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(0i, -2147483647i, _wgslsmith_div_i32(918i, 2147483647i), 0i), vec4<i32>(1i, 1i, 1i, 1i)));
    var var_1 = !select(!select(select(vec4<bool>(arg_1.b, true, false, arg_0.d), vec4<bool>(arg_0.d, arg_0.d, false, arg_1.b), arg_1.b), select(vec4<bool>(true, arg_0.d, true, arg_0.d), vec4<bool>(arg_1.b, true, false, true), arg_0.d), !vec4<bool>(arg_0.d, true, arg_1.b, arg_1.c.d)), select(select(select(vec4<bool>(false, true, arg_1.b, arg_0.d), vec4<bool>(arg_0.d, arg_0.d, arg_0.d, true), false), select(vec4<bool>(false, true, arg_1.c.d, false), vec4<bool>(false, arg_1.c.d, true, false), true), vec4<bool>(false, arg_1.c.d, arg_1.c.d, true)), select(vec4<bool>(true, arg_1.c.d, false, arg_0.d), vec4<bool>(false, arg_0.d, false, false), !vec4<bool>(arg_1.b, arg_1.c.d, true, arg_0.d)), !select(vec4<bool>(arg_0.d, arg_0.d, arg_0.d, true), vec4<bool>(false, arg_1.b, false, false), false)), !vec4<bool>(true, var_0.x <= var_0.x, any(vec2<bool>(arg_1.b, arg_0.d)), true));
    let var_2 = Struct_1(arg_1.c.a, 1u, 4294967295u, false);
    global0 = array<u32, 3>();
    let var_3 = arg_1;
    return vec4<bool>(_wgslsmith_mod_u32(34675u, var_2.b << (reverseBits(1u) % 32u)) >= _wgslsmith_dot_vec4_u32(vec4<u32>(var_3.c.a.x, 38092u, ~arg_3, 13792u >> (arg_0.c % 32u)), reverseBits(~vec4<u32>(arg_2, u_input.a.x, arg_1.c.c, 1u))), var_2.d, true, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!(!func_4(func_1(global0[_wgslsmith_index_u32(u_input.a.x, 3u)], Struct_1(vec2<u32>(7147u, global0[_wgslsmith_index_u32(29586u, 3u)]), global0[_wgslsmith_index_u32(0u, 3u)], u_input.a.x, false)), Struct_2(20473u, true, Struct_1(vec2<u32>(43079u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(41969u, 3u)], 3u)]), 100412u, u_input.a.x, false), 35359u), ~u_input.a.x, 0u)));
    global0 = array<u32, 3>();
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, u_input.a.x), 3u)];
    var_1 = ~(~(~global0[_wgslsmith_index_u32(1u, 3u)] & global0[_wgslsmith_index_u32(25661u, 3u)]) >> (_wgslsmith_dot_vec3_u32(~(vec3<u32>(9412u, 7128u, 73272u) << (vec3<u32>(global0[_wgslsmith_index_u32(4190u, 3u)], u_input.a.x, global0[_wgslsmith_index_u32(4294967295u, 3u)]) % vec3<u32>(32u))), firstLeadingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 3u)], 3u)], global0[_wgslsmith_index_u32(u_input.a.x, 3u)]), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)))) % 32u));
    global0 = array<u32, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(min(~(select(vec3<u32>(36662u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(73798u, 3u)], 3u)], 0u), vec3<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 3u)], 23614u, 1u), vec3<bool>(false, true, var_0.x)) ^ vec3<u32>(4294967295u, 10230u, 26532u)), firstTrailingBit(vec3<u32>(abs(0u), 1u, u_input.a.x ^ 7251u))), -14817i);
}

