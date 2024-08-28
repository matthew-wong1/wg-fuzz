struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec2<f32>,
    d: vec3<f32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_2;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    var var_0 = firstTrailingBit(firstLeadingBit(abs(_wgslsmith_dot_vec4_i32(-vec4<i32>(-1i, u_input.e.x, global1.e.x, global1.e.x), vec4<i32>(global1.e.x, global1.e.x, 9925i, u_input.c)))));
    let var_1 = false;
    global1 = Struct_2(arg_2, reverseBits(reverseBits(arg_2.b)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(121f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-278f))))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-621f, 425f, global1.d.x) * _wgslsmith_f_op_vec3_f32(exp2(global1.d))), select(~u_input.d.xx, vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, global1.e.x), vec2<i32>(1i, u_input.e.x)), -1505i) & -countOneBits(u_input.d.xx), !vec2<bool>(true, all(arg_0))));
    global1 = Struct_2(arg_3, 15007u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.d.x, 1097f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(630f, global1.d.x), vec2<f32>(104f, -798f))))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.d.x), global1.c.x))), global1.d.x, _wgslsmith_f_op_f32(106f - 643f)), _wgslsmith_mod_vec2_i32(-abs(vec2<i32>(-61230i, 2147483647i)), u_input.e));
    return global1.a.a;
}

fn func_2(arg_0: Struct_2) -> u32 {
    let var_0 = func_3(!(!(!vec3<bool>(global1.a.a, arg_0.a.a, arg_0.a.a))), abs(_wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 0u, 1u, 0u), vec4<u32>(global1.a.b, arg_0.b, u_input.a, arg_0.a.b), vec4<u32>(4294967295u, u_input.b, 42045u, arg_0.b)), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.b, 30508u, arg_0.a.b, arg_0.b), vec4<u32>(arg_0.b, u_input.a, global1.b, global1.b), vec4<u32>(104858u, 1u, u_input.a, u_input.a)))), arg_0.a, arg_0.a) | !all(vec2<bool>(true, arg_0.a.a));
    global0 = _wgslsmith_dot_vec2_i32(global1.e, select(-abs(_wgslsmith_sub_vec2_i32(arg_0.e, vec2<i32>(2147483647i, global1.e.x))), select(_wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(arg_0.e, global1.e), _wgslsmith_mult_vec2_i32(vec2<i32>(global1.e.x, global1.e.x), u_input.e)), _wgslsmith_div_vec2_i32(-vec2<i32>(arg_0.e.x, global1.e.x), -vec2<i32>(-52652i, global1.e.x)), arg_0.d.x < _wgslsmith_f_op_f32(-560f - arg_0.d.x)), !all(vec3<bool>(arg_0.a.a, arg_0.a.a, false))));
    var var_1 = abs(vec4<u32>(30889u, _wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.a, arg_0.a.b) ^ ~arg_0.b, u_input.b), ~10320u, _wgslsmith_mult_u32(~1u, _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(796u, global1.b)), ~vec2<u32>(69987u, 76203u)))));
    var_1 = ~(~(~vec4<u32>(arg_0.b, 22603u ^ global1.a.b, global1.b, firstTrailingBit(global1.a.b))));
    var var_2 = u_input.e.x;
    return ~global1.a.b;
}

fn func_4(arg_0: Struct_1) -> Struct_2 {
    global1 = Struct_2(Struct_1(global1.a.a, ~_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(arg_0.b, arg_0.b, 75970u)), _wgslsmith_div_vec3_u32(vec3<u32>(arg_0.b, 4294967295u, u_input.a), vec3<u32>(u_input.b, arg_0.b, 1u)))), 26192u, global1.d.xx, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(global1.d, vec3<f32>(global1.c.x, global1.d.x, global1.c.x), vec3<bool>(false, true, arg_0.a))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(438f, 1553f, 1943f))) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(global1.d, global1.d), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.d.x, global1.d.x, global1.c.x))))))), global1.e);
    let var_0 = ~min(_wgslsmith_sub_vec3_u32(select(~vec3<u32>(0u, global1.b, arg_0.b), vec3<u32>(global1.a.b, 46963u, u_input.b), true), vec3<u32>(0u, ~u_input.b, global1.b)), ~(~(vec3<u32>(u_input.a, 19869u, arg_0.b) ^ vec3<u32>(12732u, arg_0.b, 30339u))));
    global1 = Struct_2(global1.a, u_input.b, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(global1.c.x)), _wgslsmith_f_op_f32(global1.c.x - global1.d.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(global1.d.x, global1.d.x)), global1.c.x) * _wgslsmith_f_op_vec2_f32(-global1.d.zx)), global1.a.a)), global1.d, abs(vec2<i32>(25591i, global1.e.x)));
    let var_1 = Struct_1(arg_0.a, 41862u);
    global0 = _wgslsmith_div_i32(global1.e.x & u_input.d.x, -global1.e.x & 1i);
    return Struct_2(global1.a, ~19835u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(global1.d.xy)) - vec2<f32>(548f, global1.c.x)) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(563f, global1.d.x))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.d), _wgslsmith_f_op_vec3_f32(round(global1.d))), vec2<i32>(2147483647i, ~abs(0i)));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec2<i32>, arg_3: vec2<i32>) -> Struct_2 {
    return func_4(Struct_1(arg_0.a, func_2(Struct_2(arg_0, global1.b, _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.d.x, arg_1.x) * vec2<f32>(arg_1.x, -356f)), _wgslsmith_f_op_vec3_f32(trunc(global1.d)), select(arg_2, vec2<i32>(0i, global1.e.x), true)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_1(true, 15932u), _wgslsmith_f_op_vec3_f32(trunc(global1.d)), vec2<i32>(-509i, 23621i), vec2<i32>(0i, 1i));
    let var_1 = ~(~vec4<u32>(~24547u, var_0.a.b, 13155u, 49311u));
    global1 = Struct_2(Struct_1(func_1(Struct_1(!global1.a.a, u_input.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.d) * _wgslsmith_f_op_vec3_f32(trunc(var_0.d))), var_0.e, _wgslsmith_sub_vec2_i32(firstTrailingBit(u_input.e), vec2<i32>(u_input.e.x, 1i) >> (var_1.yx % vec2<u32>(32u)))).a.a, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), ~var_1.xz), 31986u)), 18461u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.d.x, 294f) + vec2<f32>(-692f, global1.c.x)), vec2<f32>(-1420f, 236f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.x, -728f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-694f, _wgslsmith_f_op_f32(-1080f + 173f)) * vec2<f32>(_wgslsmith_f_op_f32(step(850f, global1.d.x)), global1.d.x))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-111f)))), _wgslsmith_f_op_f32(round(var_0.c.x)), global1.d.x), vec2<i32>(8302i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e.x, 11352i, -23647i) << (var_1.zww % vec3<u32>(32u)), u_input.d)) | -var_0.e);
    global0 = _wgslsmith_sub_i32(var_0.e.x, u_input.c);
    let var_2 = Struct_2(global1.a, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(~var_1.wyx, var_1.xyy), vec3<u32>(22742u, 94100u, 69030u) >> (_wgslsmith_mult_vec3_u32(var_1.xzw, vec3<u32>(22250u, 1u, 8819u)) % vec3<u32>(32u))) >> (select(var_0.b, 8674u, false) % 32u), var_0.c, var_0.d, -vec2<i32>(-func_4(Struct_1(false, 1u)).e.x, global1.e.x));
    var var_3 = var_0.b ^ var_2.a.b;
    var_3 = var_2.a.b;
    global1 = func_4(var_2.a);
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.d);
}

