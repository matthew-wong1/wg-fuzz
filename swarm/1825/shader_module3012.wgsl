struct Struct_1 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: i32,
}

struct Struct_2 {
    a: bool,
    b: vec2<i32>,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 11>;

var<private> global1: bool = false;

var<private> global2: Struct_3;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec3<bool>, arg_1: bool) -> bool {
    global1 = !(((_wgslsmith_add_u32(u_input.b, 0u) < (u_input.a.x >> (u_input.a.x % 32u))) && any(!vec4<bool>(arg_0.x, arg_1, arg_0.x, true))) && false);
    let var_0 = arg_0;
    var var_1 = vec4<f32>(global2.a, _wgslsmith_f_op_f32(-global2.a), _wgslsmith_f_op_f32(ceil(-260f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(global2.a)))), 536f, var_0.x))));
    var var_2 = false;
    let var_3 = ~_wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32((vec2<u32>(44104u, u_input.a.x) ^ u_input.a.ww) >> (_wgslsmith_clamp_vec2_u32(u_input.a.zx, vec2<u32>(58489u, 1u), u_input.a.yw) % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(firstTrailingBit(u_input.a.xx), _wgslsmith_clamp_vec2_u32(u_input.a.yx, vec2<u32>(u_input.b, 4294967295u), vec2<u32>(4294967295u, u_input.b)))), min(vec2<u32>(_wgslsmith_mod_u32(u_input.a.x, 2423u), u_input.a.x), max(_wgslsmith_mod_vec2_u32(u_input.a.xy, vec2<u32>(1650u, 0u)), vec2<u32>(1u, 348u))), vec2<u32>(~42444u, _wgslsmith_clamp_u32(u_input.b << (25681u % 32u), u_input.b, firstLeadingBit(12376u))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(479f * var_1.x) + _wgslsmith_f_op_f32(select(-483f, -142f, 52904u <= firstTrailingBit(8955u)))) != _wgslsmith_f_op_f32(-global2.a);
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<u32>, arg_2: i32) -> u32 {
    var var_0 = vec2<i32>(0i, -_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 1i, -arg_2), min(select(vec3<i32>(-34815i, -1i, u_input.c.x), vec3<i32>(-451i, u_input.c.x, arg_2), true), vec3<i32>(u_input.c.x, 1i, 0i) & vec3<i32>(arg_2, 0i, u_input.c.x))));
    var var_1 = vec2<bool>(any(vec3<bool>(true, true, !func_3(vec3<bool>(false, false, true), true))), false);
    var_1 = select(select(select(vec2<bool>(arg_1.x != 33801u, any(vec2<bool>(true, true))), vec2<bool>(func_3(vec3<bool>(var_1.x, true, var_1.x), false), var_1.x), !select(vec2<bool>(false, true), vec2<bool>(var_1.x, true), vec2<bool>(true, var_1.x))), !vec2<bool>(var_1.x, var_1.x), vec2<bool>(true, true)), vec2<bool>(true == !(var_0.x >= u_input.c.x), true), var_1.x);
    var_1 = select(select(select(select(select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(false, var_1.x), vec2<bool>(var_1.x, var_1.x)), vec2<bool>(true, var_1.x), true), select(vec2<bool>(true, true), !vec2<bool>(true, var_1.x), var_1.x), !select(vec2<bool>(var_1.x, true), vec2<bool>(var_1.x, var_1.x), vec2<bool>(false, var_1.x))), !select(select(vec2<bool>(false, false), vec2<bool>(var_1.x, false), var_1.x), vec2<bool>(true, var_1.x), vec2<bool>(true, true)), false), vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global2.a))) >= _wgslsmith_f_op_f32(_wgslsmith_div_f32(-170f, global2.a) + _wgslsmith_f_op_f32(max(global2.a, -1013f))), false), false);
    var var_2 = var_1.x;
    return firstLeadingBit(select(4294967295u, arg_0.x, var_1.x));
}

fn func_1(arg_0: vec3<f32>, arg_1: i32, arg_2: vec3<f32>, arg_3: u32) -> Struct_1 {
    global0 = array<Struct_3, 11>();
    global1 = arg_0.x <= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.x)))), -1367f, any(vec4<bool>(true, true, true, true))));
    var var_0 = vec3<i32>(_wgslsmith_add_i32(i32(-1i) * -3963i, -u_input.c.x), -12573i, -u_input.c.x);
    let var_1 = vec3<u32>(arg_3, arg_3 | func_2(_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, 0u, arg_3, u_input.a.x), u_input.a), ~vec4<u32>(u_input.a.x, arg_3, 1u, 1u)), vec2<u32>(_wgslsmith_mod_u32(u_input.a.x, arg_3), arg_3), _wgslsmith_div_i32(i32(-1i) * -2147483647i, 2147483647i)), firstLeadingBit(1u));
    var var_2 = Struct_3(_wgslsmith_f_op_f32(floor(arg_2.x)));
    return Struct_1(vec4<i32>(u_input.c.x, ~abs(_wgslsmith_mod_i32(var_0.x, 0i)), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(max(var_0.zx, u_input.c), ~u_input.c), _wgslsmith_dot_vec2_i32(abs(var_0.xx), var_0.zz)), ~u_input.c.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a, var_2.a))) * vec2<f32>(arg_2.x, -892f)) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(max(arg_2.zz, _wgslsmith_f_op_vec2_f32(arg_0.zz * vec2<f32>(-1429f, -406f)))), arg_2.yz))), _wgslsmith_div_i32(_wgslsmith_mod_i32(arg_1 | -var_0.x, _wgslsmith_add_i32(~0i, i32(-1i) * -1i)), var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(_wgslsmith_div_f32(1555f, global2.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a) + _wgslsmith_f_op_f32(max(128f, _wgslsmith_f_op_f32(-1964f - 1436f)))), _wgslsmith_f_op_f32(288f * _wgslsmith_f_op_f32(abs(151f))));
    global1 = true;
    let var_1 = func_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(global2.a, 997f)), _wgslsmith_f_op_f32(-2052f * global2.a), _wgslsmith_f_op_f32(var_0.x - 185f))))), ~(-3362i) | _wgslsmith_sub_i32(abs(u_input.c.x), u_input.c.x), _wgslsmith_f_op_vec3_f32(-var_0), _wgslsmith_dot_vec2_u32(u_input.a.yx, abs(~abs(u_input.a.zz))));
    var var_2 = (reverseBits(_wgslsmith_div_vec4_u32(u_input.a, ~vec4<u32>(u_input.b, u_input.a.x, 1u, 1u))) >> (u_input.a % vec4<u32>(32u))) << (~firstTrailingBit(select(u_input.a, ~vec4<u32>(442u, u_input.a.x, u_input.a.x, u_input.a.x), true)) % vec4<u32>(32u));
    let var_3 = Struct_3(-175f);
    global1 = any(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true)), true)) | true;
    global0 = array<Struct_3, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(_wgslsmith_sub_u32(var_2.x, 0u), firstLeadingBit(u_input.a.x)), var_0.x, -6209i, _wgslsmith_f_op_f32(-global2.a));
}

