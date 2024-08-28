struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: vec4<i32>,
    e: vec3<f32>,
}

struct Struct_3 {
    a: f32,
    b: vec2<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: vec3<u32> = vec3<u32>(0u, 1u, 0u);

var<private> global2: array<i32, 22>;

var<private> global3: array<vec4<u32>, 6>;

var<private> global4: array<Struct_1, 21>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: vec3<bool>) -> u32 {
    global2 = array<i32, 22>();
    var var_0 = arg_1.d.x;
    let var_1 = -firstTrailingBit(arg_1.d.wwz);
    var var_2 = arg_2;
    return 1u;
}

fn func_2(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: vec3<bool>, arg_3: u32) -> i32 {
    var var_0 = !select(!select(select(vec4<bool>(arg_2.x, true, true, true), vec4<bool>(false, true, arg_2.x, arg_2.x), true), vec4<bool>(arg_2.x, arg_2.x, false, arg_2.x), vec4<bool>(false, false, arg_2.x, true)), vec4<bool>(true, _wgslsmith_f_op_f32(2930f - arg_1.x) <= _wgslsmith_f_op_f32(ceil(1197f)), true, true), select(vec4<bool>(select(false, arg_2.x, true), arg_0.a.a, true, true), !(!vec4<bool>(arg_2.x, true, true, arg_0.a.a)), !vec4<bool>(arg_2.x, true, false, false)));
    var var_1 = u_input.a.xzz << (vec3<u32>(~func_3(true, arg_0, select(vec3<bool>(true, true, false), vec3<bool>(false, arg_0.a.a, false), arg_0.a.a)), func_3(false, arg_0, !var_0.wwx), reverseBits(9347u)) % vec3<u32>(32u));
    let var_2 = arg_0;
    let var_3 = Struct_2(var_2.a, var_2.a, 60356u, var_2.d, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-460f, _wgslsmith_f_op_f32(f32(-1f) * -214f), _wgslsmith_f_op_f32(-641f * 615f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1275f, _wgslsmith_f_op_f32(-var_2.e.x), _wgslsmith_f_op_f32(sign(arg_0.e.x))))));
    let var_4 = var_3.c < 1u;
    return ~(~0i);
}

fn func_1(arg_0: vec2<f32>) -> Struct_1 {
    let var_0 = Struct_3(arg_0.x, vec2<i32>(global2[_wgslsmith_index_u32(~global0.x, 22u)], _wgslsmith_mult_i32(global2[_wgslsmith_index_u32(4294967295u, 22u)], func_2(Struct_2(global4[_wgslsmith_index_u32(0u, 21u)], Struct_1(false), 22913u, vec4<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 22u)], global2[_wgslsmith_index_u32(global1.x, 22u)], 51862i, -7192i), vec3<f32>(1876f, -1294f, arg_0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, -116f, 1000f) + vec4<f32>(2331f, arg_0.x, -1109f, arg_0.x)), vec3<bool>(true, true, false), 24138u))), Struct_1(all(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), true))));
    global2 = array<i32, 22>();
    global4 = array<Struct_1, 21>();
    global3 = array<vec4<u32>, 6>();
    global4 = array<Struct_1, 21>();
    return Struct_1(var_0.c.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_u32(_wgslsmith_mod_u32(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(42453u, global1.x, countOneBits(u_input.a.x), global1.x), global3[_wgslsmith_index_u32(4294967295u, 6u)])), u_input.a.x, _wgslsmith_div_u32(global0.x, 0u));
    let var_1 = vec3<u32>(~reverseBits(u_input.a.x), var_0, 0u >> (global0.x % 32u));
    global3 = array<vec4<u32>, 6>();
    var var_2 = func_1(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(785f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-451f, 1619f)), _wgslsmith_f_op_f32(abs(-900f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(2377f, 228f) + vec2<f32>(957f, -659f))))))));
    let var_3 = any(!select(vec3<bool>(true, any(vec3<bool>(var_2.a, false, false)), var_2.a), vec3<bool>(true, any(vec2<bool>(var_2.a, var_2.a)), !var_2.a), all(vec4<bool>(var_2.a, false, var_2.a, var_2.a))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(1000f)), 1022f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-629f))), _wgslsmith_f_op_f32(abs(536f)))), 15557u, -vec2<i32>(global2[_wgslsmith_index_u32(max(~global0.x, abs(66195u)), 22u)], -23003i));
}

