struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: vec4<f32>,
    d: u32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: vec2<i32>,
    d: i32,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 7> = array<vec3<f32>, 7>(vec3<f32>(-289f, -845f, 3041f), vec3<f32>(2279f, -743f, -897f), vec3<f32>(128f, -1425f, -823f), vec3<f32>(-685f, -1000f, 2132f), vec3<f32>(1895f, 1001f, 308f), vec3<f32>(-276f, -334f, 1000f), vec3<f32>(-169f, -1441f, 485f));

var<private> global1: array<f32, 16>;

var<private> global2: array<vec2<u32>, 3>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_1() -> i32 {
    global1 = array<f32, 16>();
    return _wgslsmith_add_i32(-_wgslsmith_dot_vec4_i32(select(vec4<i32>(-2147483647i, -2147483647i, -37849i, -5553i), vec4<i32>(1i, 1i, 1i, 1i), false), vec4<i32>(-6400i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -1i), vec2<i32>(1i, 11266i)), -5516i, _wgslsmith_dot_vec3_i32(vec3<i32>(-20164i, 2147483647i, 43081i), vec3<i32>(2541i, 21367i, -2147483647i)))), -21227i);
}

fn func_3(arg_0: u32, arg_1: vec3<f32>, arg_2: bool) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_1.x * arg_1.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-689f, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, arg_0), 16u)])), -107f)))) >= 1397f;
    var var_1 = Struct_3(select(!select(vec2<bool>(true, true), !vec2<bool>(true, arg_2), vec2<bool>(arg_2, false)), select(select(select(vec2<bool>(arg_2, true), vec2<bool>(false, false), vec2<bool>(true, var_0)), !vec2<bool>(false, var_0), true), select(vec2<bool>(var_0, arg_2), vec2<bool>(true, false), select(vec2<bool>(var_0, false), vec2<bool>(arg_2, true), false)), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(79526u, 75416u), 16u)] < _wgslsmith_f_op_f32(370f * arg_1.x)), (u_input.a != ~4758u) || arg_2));
    var var_2 = vec2<f32>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global2[_wgslsmith_index_u32(arg_0, 3u)], global2[_wgslsmith_index_u32(reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 45045u, arg_0, 6830u), vec4<u32>(arg_0, u_input.a, 4294967295u, 23415u))), 3u)]) | firstTrailingBit(~11445u), 16u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(281f + _wgslsmith_f_op_f32(round(-1061f)))) - arg_1.x));
    let var_3 = var_1.a;
    var var_4 = min(~(-2147483647i), -_wgslsmith_mult_i32(abs(max(1i, 1i)), 1i));
    return -(~(-vec3<i32>(1i, _wgslsmith_div_i32(23301i, -9120i), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 2147483647i, -1i, -1i), vec4<i32>(-9091i, 0i, 0i, -57346i)))));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: Struct_3, arg_3: Struct_1) -> vec2<u32> {
    let var_0 = vec2<u32>(u_input.a, _wgslsmith_mod_u32(arg_0.x, 4294967295u));
    let var_1 = Struct_1(arg_3.a << (vec3<u32>(min(firstTrailingBit(1u), arg_3.d), ~4294967295u, ~_wgslsmith_div_u32(var_0.x, u_input.a)) % vec3<u32>(32u)), u_input.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(177f, 1059f), global1[_wgslsmith_index_u32(u_input.a | arg_3.b, 16u)], _wgslsmith_f_op_f32(-arg_3.c.x), _wgslsmith_f_op_f32(-827f * -235f))) + arg_3.c), ~_wgslsmith_dot_vec4_u32(vec4<u32>(18200u, 40731u, arg_0.x, 6585u), ~vec4<u32>(arg_0.x, 0u, arg_3.d, arg_3.b)) | select(3147u, var_0.x, true), vec3<i32>(arg_1.d, reverseBits(reverseBits(-5374i)), arg_3.e.x));
    global2 = array<vec2<u32>, 3>();
    global0 = array<vec3<f32>, 7>();
    let var_2 = ~reverseBits(vec3<u32>(~arg_3.d, arg_0.x, 0u));
    return ~var_2.zz >> (~(vec2<u32>(15124u, arg_3.d) | countOneBits(~vec2<u32>(1u, var_2.x))) % vec2<u32>(32u));
}

fn func_2(arg_0: vec4<bool>, arg_1: u32, arg_2: vec2<u32>) -> bool {
    global1 = array<f32, 16>();
    let var_0 = ~max(~((45711i << (u_input.a % 32u)) << (13769u % 32u)), ~_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -2147483647i, -2377i, -33683i), vec4<i32>(2198i, -2147483647i, 906i, -2147483647i)));
    let var_1 = vec2<bool>(arg_0.x, false);
    global0 = array<vec3<f32>, 7>();
    var var_2 = abs(~func_4(vec3<u32>(4294967295u, u_input.a, ~1u), Struct_2(!var_1.x, var_0, ~vec2<i32>(var_0, var_0), -33015i), Struct_3(var_1), Struct_1(~vec3<u32>(46498u, arg_2.x, arg_2.x), arg_2.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1214f, global1[_wgslsmith_index_u32(4294967295u, 16u)], -1000f, 921f)), 1u, func_3(u_input.a, vec3<f32>(-345f, global1[_wgslsmith_index_u32(17261u, 16u)], -121f), true))));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<u32>, 3>();
    var var_0 = _wgslsmith_div_vec2_i32(~vec2<i32>(~(~(-43997i)), func_1()), countOneBits(abs(vec2<i32>(1i, 1i)) | (max(vec2<i32>(12838i, 0i), vec2<i32>(1i, 2147483647i)) << (~global2[_wgslsmith_index_u32(u_input.a, 3u)] % vec2<u32>(32u)))));
    var var_1 = !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, func_2(vec4<bool>(false, true, false, true), 15183u, vec2<u32>(u_input.a, u_input.a)), false, 5380i > var_0.x), vec4<bool>(1u > u_input.a, true, true, all(vec3<bool>(true, true, false))), vec4<bool>(true, func_2(vec4<bool>(false, true, false, true), u_input.a, global2[_wgslsmith_index_u32(u_input.a, 3u)]), any(vec4<bool>(false, false, true, false)), false)));
    let var_2 = _wgslsmith_f_op_vec3_f32(step(global0[_wgslsmith_index_u32(u_input.a, 7u)], vec3<f32>(_wgslsmith_f_op_f32(floor(554f)), 135f, -230f)));
    global1 = array<f32, 16>();
    var var_3 = Struct_3(vec2<bool>(false, (var_0.x >> (abs(u_input.a) % 32u)) != max(1i, -10182i)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_sub_u32(0u, _wgslsmith_mod_u32(13785u, 1u) & u_input.a), ~u_input.a), -vec3<i32>(var_0.x, ~var_0.x, abs(-2147483647i)) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 1u, _wgslsmith_mult_u32(u_input.a, u_input.a)), firstLeadingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a)))) % vec3<u32>(32u)));
}

