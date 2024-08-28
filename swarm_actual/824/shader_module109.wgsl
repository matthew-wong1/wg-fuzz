struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec4<i32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: i32,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct Struct_5 {
    a: bool,
    b: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 29>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_4, arg_1: i32, arg_2: vec4<f32>, arg_3: vec3<f32>) -> Struct_3 {
    global0 = array<vec3<bool>, 29>();
    global0 = array<vec3<bool>, 29>();
    global0 = array<vec3<bool>, 29>();
    let var_0 = 16983u != u_input.a.x;
    let var_1 = Struct_3(vec2<bool>(select(true, select(var_0, var_0, var_0) && (true & var_0), -u_input.b.x < (u_input.b.x & arg_1)), (u_input.b.x << (1u % 32u)) <= -42807i), (min(u_input.a, firstTrailingBit(u_input.a)) ^ countOneBits(u_input.a)) ^ ~u_input.a, _wgslsmith_div_i32(_wgslsmith_clamp_i32(14507i, 1i, arg_1), -(i32(-1i) * -45144i) << (0u % 32u)));
    return Struct_3(select(var_1.a, !select(vec2<bool>(var_0, var_1.a.x), vec2<bool>(false, var_0), select(vec2<bool>(var_1.a.x, var_1.a.x), vec2<bool>(var_1.a.x, var_1.a.x), var_1.a)), true), vec4<u32>(_wgslsmith_dot_vec4_u32(countOneBits(var_1.b), firstTrailingBit(u_input.a)), ~max(var_1.b.x, _wgslsmith_add_u32(u_input.a.x, 4294967295u)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 11958u, 45224u, var_1.b.x), firstLeadingBit(u_input.a)), 0u), _wgslsmith_mod_i32(u_input.b.x, u_input.b.x));
}

fn func_3(arg_0: Struct_4) -> vec4<f32> {
    return arg_0.a;
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: Struct_1) -> Struct_4 {
    global0 = array<vec3<bool>, 29>();
    global0 = array<vec3<bool>, 29>();
    global0 = array<vec3<bool>, 29>();
    let var_0 = func_2(Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1384f, arg_2.a, arg_0, 2611f), vec4<f32>(-2444f, 683f, arg_0, arg_2.a))))), u_input.b.x, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a, -497f, 523f, 673f)) * vec4<f32>(363f, 408f, -911f, 212f)))))), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a)), arg_2.a, true)), _wgslsmith_f_op_f32(select(arg_2.a, _wgslsmith_f_op_f32(-267f * _wgslsmith_f_op_f32(-arg_0)), true)), -139f));
    var var_1 = vec3<bool>(any(select(select(global0[_wgslsmith_index_u32(~0u, 29u)], !global0[_wgslsmith_index_u32(123165u, 29u)], var_0.a.x), select(vec3<bool>(true, false, var_0.a.x), select(global0[_wgslsmith_index_u32(13914u, 29u)], vec3<bool>(true, var_0.a.x, var_0.a.x), vec3<bool>(false, var_0.a.x, var_0.a.x)), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_0.b.x, arg_1), 29u)]), all(var_0.a))), false, var_0.a.x);
    return Struct_4(_wgslsmith_f_op_vec4_f32(func_3(Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a, arg_0, 1975f, 239f)))))));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_3, arg_2: Struct_5, arg_3: Struct_1) -> i32 {
    global0 = array<vec3<bool>, 29>();
    var var_0 = arg_0.a.wz;
    var var_1 = -65563i;
    return _wgslsmith_mod_i32(reverseBits(37019i), 1i);
}

fn func_5(arg_0: i32, arg_1: f32, arg_2: vec4<i32>, arg_3: Struct_1) -> u32 {
    let var_0 = _wgslsmith_add_vec3_u32(firstLeadingBit(vec3<u32>(1u, 48007u ^ u_input.a.x, 4294967295u) & vec3<u32>(select(u_input.a.x, 4294967295u, true), _wgslsmith_div_u32(18792u, 1u), ~4294967295u)), select(u_input.a.wzw, firstTrailingBit(_wgslsmith_sub_vec3_u32(min(u_input.a.yzz, u_input.a.yyy), vec3<u32>(u_input.a.x, 49118u, u_input.a.x))), select(true, true, any(vec4<bool>(false, false, true, false))) & true));
    return u_input.a.x;
}

fn func_6(arg_0: Struct_1, arg_1: u32, arg_2: Struct_2, arg_3: vec3<u32>) -> StorageBuffer {
    let var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_f_op_f32(f32(-1f) * -1036f), _wgslsmith_sub_u32(61950u, arg_3.x), arg_0).a - vec4<f32>(_wgslsmith_f_op_f32(-arg_2.b.a), _wgslsmith_f_op_f32(step(1972f, 1799f)), arg_0.a, -1329f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.b.a, arg_0.a, 997f, arg_2.b.a) * vec4<f32>(arg_0.a, -186f, 384f, arg_0.a)))))));
    let var_1 = 1i;
    let var_2 = (u_input.b.x << (_wgslsmith_mult_u32(firstLeadingBit(~0u), 12741u) % 32u)) | var_1;
    global0 = array<vec3<bool>, 29>();
    global0 = array<vec3<bool>, 29>();
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(var_0.a.xy * vec2<f32>(arg_2.b.a, 599f)), _wgslsmith_f_op_vec2_f32(var_0.a.wy + vec2<f32>(arg_0.a, arg_0.a)))), var_0.a.wy)), u_input.a, vec2<i32>(_wgslsmith_dot_vec3_i32(~abs(arg_2.c.zyx), vec3<i32>(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -4905i, var_2, 2147483647i), u_input.b), -var_2)), arg_2.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 29>();
    let x = u_input.a;
    s_output = func_6(Struct_1(-714f), 25828u, Struct_2(func_5(func_4(func_1(122f, 1u, Struct_1(-1264f)), func_2(Struct_4(vec4<f32>(596f, -399f, 254f, 622f)), u_input.b.x, vec4<f32>(-513f, 1414f, 1190f, 835f), vec3<f32>(480f, 962f, -855f)), Struct_5(false, u_input.b.x), Struct_1(812f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1254f - -318f)), vec4<i32>(-u_input.b.x, u_input.b.x, reverseBits(6083i), -28539i), Struct_1(_wgslsmith_f_op_f32(min(-1602f, -912f)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1569f - -280f))), vec4<i32>(abs(1i), -32239i, u_input.b.x, _wgslsmith_mult_i32(i32(-1i) * -1i, 4445i))), _wgslsmith_sub_vec3_u32(~_wgslsmith_mod_vec3_u32(u_input.a.wxy, ~vec3<u32>(u_input.a.x, u_input.a.x, 38141u)), ~vec3<u32>(abs(u_input.a.x), u_input.a.x << (4294967295u % 32u), u_input.a.x >> (4294967295u % 32u))));
}

