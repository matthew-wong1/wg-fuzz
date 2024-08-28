struct Struct_1 {
    a: u32,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: vec4<f32>,
    d: i32,
    e: vec2<i32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: bool,
    d: i32,
    e: vec3<u32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: i32,
    c: Struct_1,
    d: u32,
    e: vec2<i32>,
}

struct Struct_5 {
    a: bool,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 11> = array<bool, 11>(true, true, true, true, false, false, true, true, false, true, false);

var<private> global1: f32 = -1000f;

var<private> global2: Struct_3;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
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

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<bool>, arg_1: f32, arg_2: u32) -> u32 {
    global1 = arg_1;
    return arg_2;
}

fn func_2(arg_0: u32, arg_1: u32) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global2.b.c + vec4<f32>(_wgslsmith_f_op_f32(round(803f)), _wgslsmith_f_op_f32(-global2.b.c.x), _wgslsmith_f_op_f32(exp2(global2.b.b)), global2.b.c.x))));
    let var_1 = vec2<u32>(~global2.e.x, _wgslsmith_clamp_u32(0u, func_3(vec3<bool>(true, true & global2.c, true), _wgslsmith_f_op_f32(-global2.b.b), _wgslsmith_add_u32(~arg_0, abs(arg_1))), ~reverseBits(firstLeadingBit(global2.e.x))));
    global1 = _wgslsmith_f_op_f32(-global2.b.b);
    let var_2 = ~_wgslsmith_clamp_vec3_u32(~vec3<u32>(_wgslsmith_clamp_u32(6227u, arg_1, 0u), _wgslsmith_add_u32(26313u, var_1.x), ~arg_1), abs(firstLeadingBit(min(vec3<u32>(var_1.x, var_1.x, 1u), global2.e))), global2.e >> (vec3<u32>(29208u, _wgslsmith_dot_vec3_u32(global2.e, vec3<u32>(arg_0, arg_1, 16994u)), _wgslsmith_div_u32(18606u, global2.e.x)) % vec3<u32>(32u)));
    global0 = array<bool, 11>();
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b.b)))));
}

fn func_1() -> f32 {
    var var_0 = Struct_2(min(50634i, -9883i), -323f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-261f, 659f, 672f, global2.b.b) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-406f, -554f, global2.b.c.x, -550f) + global2.b.c)))), global2.d, u_input.b.zz);
    var var_1 = -(~(-2147483647i)) >> (~firstTrailingBit(~(55969u << (1u % 32u))) % 32u);
    global2 = Struct_3(~_wgslsmith_sub_i32(_wgslsmith_add_i32(-global2.a, u_input.a << (global2.e.x % 32u)), global2.b.a), global2.b, any(vec3<bool>(!all(vec2<bool>(global2.c, global2.c)), global0[_wgslsmith_index_u32(0u, 11u)], true)), _wgslsmith_clamp_i32(global2.a, 17385i | min(var_0.a, global2.b.d | var_0.d), _wgslsmith_dot_vec2_i32(var_0.e, -vec2<i32>(-1i, 0i))), global2.e);
    global1 = -1000f;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2((1u << (global2.e.x % 32u)) | 19212u, ~_wgslsmith_add_u32(1u, 30739u)))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(global2.b.c.x, _wgslsmith_f_op_f32(sign(1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b))))) - 1f);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_1()), global2.b.c.x)) * global2.b.c.x));
    let var_0 = vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(global2.e.x, global2.e.x, global2.e.x, 1917u), vec4<u32>(5791u, global2.e.x, global2.e.x, 4294967295u)), _wgslsmith_div_vec4_u32(vec4<u32>(1u, 23747u, global2.e.x, global2.e.x), vec4<u32>(55688u, global2.e.x, global2.e.x, global2.e.x))), global2.e.x) ^ ~(~2086u), abs(_wgslsmith_sub_u32(_wgslsmith_mod_u32(0u, global2.e.x), max(~global2.e.x, 32878u))), abs(abs(global2.e.x) >> (~(global2.e.x ^ 1u) % 32u)), _wgslsmith_dot_vec4_u32(vec4<u32>(global2.e.x, _wgslsmith_div_u32(1u, global2.e.x), global2.e.x, firstLeadingBit(global2.e.x)), ~firstLeadingBit(vec4<u32>(2859u, 19748u, global2.e.x, 66005u))) ^ 22590u);
    var var_1 = 1u;
    var var_2 = global2.b.b;
    var_2 = 382f;
    global2 = Struct_3(_wgslsmith_mod_i32(-1i, _wgslsmith_mult_i32(-50554i, global2.d)), global2.b, !global2.c, u_input.b.x, vec3<u32>(~global2.e.x, countOneBits(var_0.x), 50483u));
    let var_3 = Struct_1(~(~56968u), all(vec4<bool>(all(vec2<bool>(global2.c, false)), false, false, global0[_wgslsmith_index_u32(global2.e.x, 11u)])), _wgslsmith_f_op_f32(select(-156f, _wgslsmith_f_op_f32(abs(global2.b.b)), any(!select(vec4<bool>(global0[_wgslsmith_index_u32(var_0.x, 11u)], true, global2.c, false), vec4<bool>(true, true, global0[_wgslsmith_index_u32(12599u, 11u)], global0[_wgslsmith_index_u32(global2.e.x, 11u)]), global0[_wgslsmith_index_u32(61u, 11u)])))));
    var var_4 = u_input.b.wy;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(u_input.b.zxx, vec3<i32>(-2147483647i, global2.d, u_input.a)), firstLeadingBit(_wgslsmith_div_vec2_i32(-vec2<i32>(8216i, -57038i), u_input.b.yx ^ (vec2<i32>(var_4.x, global2.b.d) << (var_0.zx % vec2<u32>(32u))))));
}

