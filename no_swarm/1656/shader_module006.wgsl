struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: u32,
    d: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(109144i);

var<private> global1: array<f32, 22>;

var<private> global2: i32;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<bool>) -> u32 {
    global0 = Struct_1(~0i);
    var var_0 = Struct_2(vec3<bool>(false, any(arg_0), !(!any(vec3<bool>(true, true, arg_0.x)))), Struct_1((i32(-1i) * -1i) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 70602u, u_input.a), ~vec3<u32>(u_input.b, u_input.a, 22938u)) % 32u)), _wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.b, _wgslsmith_mod_u32(firstTrailingBit(25468u), 1u)), select(reverseBits(4294967295u) & max(4294967295u, u_input.a), 0u, select(arg_0.x, arg_0.x, arg_0.x))), vec4<f32>(-480f, global1[_wgslsmith_index_u32((0u | firstLeadingBit(u_input.b)) >> (u_input.a % 32u), 22u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(6537u, 22u)] + -1000f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -110f), _wgslsmith_f_op_f32(step(723f, global1[_wgslsmith_index_u32(u_input.a, 22u)])))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1772f - global1[_wgslsmith_index_u32(u_input.a, 22u)]), _wgslsmith_f_op_f32(round(1000f))), 1000f)));
    global0 = var_0.b;
    let var_1 = Struct_3(Struct_1(-1i));
    var var_2 = var_1;
    return _wgslsmith_clamp_u32(4294967295u, 1u, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(select(~vec2<u32>(0u, 32887u), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, 7553u), vec2<u32>(var_0.c, 0u)), !var_0.a.xy), vec2<u32>(_wgslsmith_mult_u32(24825u, u_input.a), 60042u)), ~vec2<u32>(var_0.c, 1u)));
}

fn func_2() -> vec2<bool> {
    var var_0 = ~vec2<u32>(func_3(vec4<bool>(true, true, true, true)), u_input.a);
    let var_1 = u_input.c;
    global0 = Struct_1(select(2147483647i, _wgslsmith_mod_i32(global0.a, 27745i) | var_1.x, true));
    let var_2 = -_wgslsmith_dot_vec3_i32(vec3<i32>(-(~global0.a), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, u_input.c.x, 3097i), vec3<i32>(49787i, u_input.c.x, 41575i)), vec3<i32>(-21531i, -25736i, 46992i)), ~u_input.c.x), -(~countOneBits(vec3<i32>(var_1.x, 13983i, var_1.x))));
    var var_3 = Struct_2(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), Struct_1(abs(1i)), 72442u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1[_wgslsmith_index_u32(u_input.b, 22u)], global1[_wgslsmith_index_u32(u_input.b, 22u)], 336f, 111f), vec4<f32>(global1[_wgslsmith_index_u32(u_input.a, 22u)], global1[_wgslsmith_index_u32(var_0.x, 22u)], global1[_wgslsmith_index_u32(var_0.x, 22u)], global1[_wgslsmith_index_u32(var_0.x, 22u)]))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1159f, 100f, -438f, -637f) * vec4<f32>(2287f, global1[_wgslsmith_index_u32(67758u, 22u)], global1[_wgslsmith_index_u32(u_input.a, 22u)], global1[_wgslsmith_index_u32(37586u, 22u)]))))));
    return select(var_3.a.zy, select(vec2<bool>(true, false), vec2<bool>(var_3.a.x, !select(true, var_3.a.x, var_3.a.x)), false), _wgslsmith_clamp_u32(4294967295u, 99843u, var_3.c) < countOneBits(~1u));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = Struct_2(vec3<bool>(!any(func_2()), false, !any(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), true))), Struct_1(reverseBits(arg_1.a | 16287i)), u_input.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1302f, global1[_wgslsmith_index_u32(u_input.b, 22u)], -845f, global1[_wgslsmith_index_u32(u_input.a, 22u)]) * vec4<f32>(303f, -2868f, -1418f, global1[_wgslsmith_index_u32(55361u, 22u)]))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(579f, -497f, global1[_wgslsmith_index_u32(u_input.a, 22u)], global1[_wgslsmith_index_u32(u_input.a, 22u)]))))));
    global2 = i32(-1i) * -2147483647i;
    global0 = arg_1;
    let var_1 = -1i;
    global1 = array<f32, 22>();
    return Struct_1(arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_add_i32(max(firstTrailingBit(abs(u_input.c.x)), global0.a), (u_input.c.x ^ (2147483647i << (u_input.a % 32u))) & global0.a));
    let var_1 = vec2<bool>(false, any(!select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), true)));
    let var_2 = var_0;
    var var_3 = Struct_1(-(i32(-1i) * -2147483647i) ^ ~u_input.c.x);
    var_3 = func_1(countOneBits(reverseBits(vec3<i32>(max(global0.a, global0.a), -2147483647i ^ var_2.a, -var_0.a))), Struct_1(~2147483647i));
    global1 = array<f32, 22>();
    var_3 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, vec2<i32>(var_2.a, 0i), _wgslsmith_div_vec2_i32(u_input.c, u_input.c), 2147483647i);
}

