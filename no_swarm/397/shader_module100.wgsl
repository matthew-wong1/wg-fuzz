struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: vec4<i32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-267f, -823f);

var<private> global1: vec2<bool> = vec2<bool>(true, true);

var<private> global2: array<Struct_3, 20>;

var<private> global3: array<Struct_3, 16>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> f32 {
    let var_0 = vec3<i32>(_wgslsmith_clamp_i32(2147483647i, ~_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-16558i, u_input.a), vec2<i32>(u_input.b, -2147483647i)), _wgslsmith_mod_i32(15869i, -2147483647i)), ~(~u_input.b)), u_input.c, -u_input.c);
    var var_1 = Struct_2(vec2<u32>(29393u, 23034u));
    return _wgslsmith_f_op_f32(global0.x + -368f);
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: Struct_3, arg_3: vec2<bool>) -> u32 {
    let var_0 = Struct_1(~_wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-8654i, 2147483647i, 11078i), arg_0.c.yyx), arg_0.c.xxy) ^ arg_0.a, _wgslsmith_f_op_f32(max(arg_0.b, _wgslsmith_f_op_f32(func_3()))), arg_0.c, !arg_3);
    let var_1 = _wgslsmith_f_op_f32(-583f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-315f * _wgslsmith_f_op_f32(-global0.x)))));
    var var_2 = var_0.b;
    global2 = array<Struct_3, 20>();
    let var_3 = firstTrailingBit(_wgslsmith_sub_u32(~(1u >> (_wgslsmith_clamp_u32(20834u, 0u, 0u) % 32u)), _wgslsmith_clamp_u32(~1u, _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(0u, 38954u, 1u, 42515u)), firstLeadingBit(vec4<u32>(0u, 4294967295u, 0u, 4294967295u))), select(abs(1u), _wgslsmith_div_u32(38250u, 112481u), !arg_3.x))));
    return var_3;
}

fn func_4(arg_0: vec3<u32>) -> vec2<f32> {
    global3 = array<Struct_3, 16>();
    var var_0 = Struct_3(!global1.x);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, _wgslsmith_f_op_f32(func_3())) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) - vec2<f32>(global0.x, global0.x)) - _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0.x, 1156f))))))));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec4<bool>, arg_2: vec2<bool>) -> vec2<f32> {
    var var_0 = arg_2.x;
    var_0 = global1.x;
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(abs(vec3<u32>(16209u, _wgslsmith_sub_u32(1u, 0u), func_2(Struct_1(vec3<i32>(-2147483647i, 9124i, 1i), 1000f, vec4<i32>(arg_0.x, 3074i, 1i, u_input.c), arg_1.wx), global1.x, global2[_wgslsmith_index_u32(56173u, 20u)], vec2<bool>(true, global1.x)))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-458f, 759f) * vec2<f32>(global0.x, global0.x))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, 815f) + vec2<f32>(global0.x, global0.x)))) + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global0.x, 319f)))))));
    var_0 = !(!(!all(arg_1)));
    global0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1000f - -1396f), global0.x)))), -1000f);
    return vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1597f + global0.x) * global0.x)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, 431f) - 1724f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1126f))))), _wgslsmith_f_op_f32(trunc(-2784f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -vec3<i32>(~reverseBits(-2147483647i), -1i, ~(~(-7316i)) ^ u_input.b);
    let var_1 = -254f;
    let var_2 = vec3<u32>(0u, ~1u, 58070u);
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(vec2<i32>(45112i, var_0.x), select(!vec4<bool>(global1.x, false, global1.x, global1.x), !vec4<bool>(global1.x, global1.x, global1.x, global1.x), vec4<bool>(global1.x, global1.x, false, false)), !(!vec2<bool>(true, global1.x)))) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-2121f, var_1)))));
    let var_3 = Struct_2(var_2.xx);
    var var_4 = global3[_wgslsmith_index_u32(~var_2.x, 16u)];
    global1 = vec2<bool>(var_4.a, true);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(13408u, var_3.a.x, 1u), vec3<i32>(-1i >> (~_wgslsmith_mod_u32(var_2.x, var_2.x) % 32u), reverseBits(~2147483647i), _wgslsmith_div_i32(~var_0.x, 2147483647i)), _wgslsmith_mod_vec4_i32(select(firstTrailingBit(~vec4<i32>(-2147483647i, -1i, -2147483647i, 2147483647i)), vec4<i32>(46449i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, var_0.x), vec2<i32>(0i, var_0.x)), min(u_input.c, u_input.a), -10891i), !vec4<bool>(true, global1.x, global1.x, var_4.a)), ~reverseBits(firstLeadingBit(vec4<i32>(var_0.x, var_0.x, 1i, u_input.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -412f)), (_wgslsmith_mult_vec4_u32(vec4<u32>(var_3.a.x, var_3.a.x, var_3.a.x, var_3.a.x), vec4<u32>(var_3.a.x, 0u, 15598u, 1u)) ^ ~(~vec4<u32>(var_3.a.x, 67011u, var_3.a.x, var_3.a.x))) << (abs(firstTrailingBit(select(vec4<u32>(var_3.a.x, var_2.x, 12889u, var_2.x), vec4<u32>(var_2.x, 1u, var_3.a.x, 1u), vec4<bool>(global1.x, false, false, global1.x)))) % vec4<u32>(32u)));
}

