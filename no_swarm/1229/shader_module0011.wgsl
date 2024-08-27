struct Struct_1 {
    a: bool,
    b: u32,
    c: i32,
    d: vec3<i32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 19>;

var<private> global1: u32 = 16912u;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: u32) -> u32 {
    let var_0 = 1i;
    return ~_wgslsmith_sub_u32(arg_0, ~abs(u_input.b));
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: vec3<i32>, arg_3: bool) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-173f, arg_1.a.e, arg_1.a.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.e)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1184f, -232f, arg_3)) * _wgslsmith_f_op_f32(f32(-1f) * -342f)), _wgslsmith_f_op_f32(abs(arg_1.a.e)), arg_1.a.e, 1185f))));
    global1 = func_3(56202u);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(582f * var_0.x) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.e)))));
    var var_2 = 1238f;
    return reverseBits(vec3<u32>(arg_1.a.b | ~u_input.b, arg_1.a.b, max(~reverseBits(4294967295u), 1u >> ((u_input.b << (arg_1.a.b % 32u)) % 32u))));
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: f32, arg_3: Struct_2) -> vec4<bool> {
    global1 = u_input.b;
    let var_0 = _wgslsmith_mult_vec3_u32(select(func_2(min(firstLeadingBit(vec4<i32>(0i, u_input.a.x, 12696i, 2147483647i)), vec4<i32>(0i, arg_0, 9042i, arg_3.a.d.x)), global0[_wgslsmith_index_u32(u_input.b, 19u)], select(vec3<i32>(arg_1, 0i, 13585i), arg_3.a.d, vec3<bool>(arg_3.a.a, arg_3.a.a, true)), any(!vec2<bool>(arg_3.a.a, false))), func_2(~_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, arg_1, 1i, u_input.a.x), vec4<i32>(arg_3.a.c, -2147483647i, u_input.a.x, -2147483647i), vec4<i32>(-2147483647i, u_input.a.x, arg_0, -45234i)), Struct_2(Struct_1(true, arg_3.a.b, 1574i, arg_3.a.d, -283f)), max(arg_3.a.d, vec3<i32>(1i, arg_0, 2147483647i)), true), arg_3.a.a || all(vec3<bool>(true, false, arg_3.a.a))), vec3<u32>(2913u, _wgslsmith_clamp_u32(~(~u_input.b), max(4294967295u, arg_3.a.b) ^ 76385u, min(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 14846u, u_input.b), vec3<u32>(47849u, 1u, 1u)), func_3(arg_3.a.b))), _wgslsmith_mod_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_3.a.b, arg_3.a.b, arg_3.a.b, 4294967295u), vec4<u32>(arg_3.a.b, u_input.b, 1u, arg_3.a.b))) ^ u_input.b));
    var var_1 = min(min(_wgslsmith_add_vec2_u32(~reverseBits(var_0.zy), ~vec2<u32>(90357u, var_0.x) & ~var_0.zz), (var_0.zx & vec2<u32>(23051u, arg_3.a.b)) << (vec2<u32>(~48464u, arg_3.a.b) % vec2<u32>(32u))), var_0.zz);
    return !vec4<bool>(arg_3.a.a, true, arg_3.a.a, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~4294967295u;
    var var_1 = _wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.b, 0u), 24764u);
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(8898u, ~u_input.b), 19u)];
    let var_3 = select(vec3<bool>(any(!func_1(u_input.a.x, 2892i, var_2.a.e, Struct_2(var_2.a))), !(var_2.a.d.x >= _wgslsmith_sub_i32(27828i, 16279i)), any(vec3<bool>(var_2.a.a, var_2.a.a, false))), !vec3<bool>(!var_2.a.a, all(!vec3<bool>(true, var_2.a.a, var_2.a.a)), _wgslsmith_clamp_i32(1i, 2147483647i, 57857i) > -u_input.a.x), !(!vec3<bool>(var_2.a.a, false | var_2.a.a, !var_2.a.a)));
    global0 = array<Struct_2, 19>();
    let var_4 = vec3<i32>(u_input.a.x, select(-30293i, 85185i, var_2.a.a && any(var_3.zy)), var_2.a.c);
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(561f, var_2.a.e) * vec2<f32>(-1118f, var_2.a.e))))));
}

