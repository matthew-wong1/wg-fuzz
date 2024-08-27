struct Struct_1 {
    a: vec2<bool>,
    b: f32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: u32,
    c: vec3<bool>,
}

struct Struct_4 {
    a: f32,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec2<i32>, 1> = array<vec2<i32>, 1>(vec2<i32>(1i, 47286i));

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: vec2<i32>) -> f32 {
    return -118f;
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: bool, arg_3: vec3<f32>) -> bool {
    let var_0 = Struct_4(704f, -3099i);
    global0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_2(u_input.d.x, var_0.a, global1[_wgslsmith_index_u32(9118u, 1u)])), arg_3.x, true)) + var_0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(-arg_0), true)) - _wgslsmith_f_op_f32(trunc(arg_0))))), arg_3.x));
    let var_1 = ~u_input.c.x;
    global1 = array<vec2<i32>, 1>();
    var var_2 = Struct_1(!select(vec2<bool>(arg_2, arg_2), vec2<bool>(arg_2, true), arg_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-739f))));
    return true;
}

fn func_3(arg_0: i32, arg_1: Struct_4, arg_2: vec3<f32>, arg_3: vec4<u32>) -> bool {
    return false;
}

fn func_4(arg_0: f32, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: i32) -> Struct_3 {
    let var_0 = Struct_4(-392f, -16090i & ((~58916i & arg_3) & -_wgslsmith_mult_i32(u_input.a, arg_3)));
    var var_1 = Struct_3(!vec3<bool>(arg_2.a.x, any(!vec4<bool>(arg_1.x, arg_1.x, arg_2.a.x, false)), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, u_input.e), vec2<u32>(4294967295u, 1u)) <= (u_input.e ^ 0u)), ~firstLeadingBit(1u), vec3<bool>(all(arg_1.yy), true, arg_2.a.x));
    var var_2 = -364f;
    var_1 = Struct_3(!select(select(vec3<bool>(false, arg_1.x, false), var_1.a, false), var_1.a, vec3<bool>(var_1.a.x, true, u_input.a == var_0.b)), var_1.b, select(var_1.c, var_1.a, !select(!vec3<bool>(true, arg_1.x, arg_1.x), vec3<bool>(var_1.a.x, var_1.c.x, arg_2.a.x), select(false, true, arg_1.x))));
    let var_3 = var_0;
    return Struct_3(select(!(!vec3<bool>(var_1.a.x, arg_1.x, true)), !vec3<bool>(var_1.a.x, arg_1.x, true), arg_2.a.x), firstLeadingBit(_wgslsmith_dot_vec4_u32(u_input.c, _wgslsmith_add_vec4_u32(vec4<u32>(var_1.b, var_1.b, u_input.d.x, var_1.b), _wgslsmith_div_vec4_u32(u_input.c, vec4<u32>(0u, var_1.b, u_input.c.x, var_1.b))))), vec3<bool>(!(!var_1.a.x), true, 4294967295u == _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(0u, 37070u)), ~vec2<u32>(var_1.b, u_input.d.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -466f) + -143f) - -424f)), -1i);
    var var_1 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -447f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-232f)))) - _wgslsmith_f_op_f32(sign(var_0.a))), select(select(!select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), !select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false)), any(vec4<bool>(true, true, true, true))), select(vec3<bool>(true, true, true), vec3<bool>(func_1(var_0.a, -4610i, false, vec3<f32>(var_0.a, 192f, -871f)), all(vec2<bool>(true, true)), all(vec3<bool>(true, false, true))), false), true), Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-693f, -595f, var_0.b <= 29359i))))), _wgslsmith_div_i32(~u_input.b, _wgslsmith_clamp_i32(1i, select(50555i, -var_0.b, func_3(u_input.b, var_0, vec3<f32>(-1674f, 676f, var_0.a), vec4<u32>(39291u, u_input.e, u_input.d.x, u_input.c.x))), ~abs(var_0.b))));
    var_1 = func_4(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(-var_0.a)))), func_4(var_0.a, var_1.a, Struct_1(!var_1.c.zy, _wgslsmith_f_op_f32(-var_0.a)), -41004i).c, Struct_1(var_1.a.zy, var_0.a), -(-48764i | _wgslsmith_clamp_i32(abs(9301i), 0i | u_input.a, _wgslsmith_div_i32(var_0.b, 0i))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(1868f * var_0.a)), -482f, func_1(var_0.a, u_input.b, false, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, var_0.a, 1000f))))))));
    let var_3 = var_0.b;
    let var_4 = Struct_4(var_2, var_3);
    let x = u_input.a;
    s_output = StorageBuffer(var_4.a);
}

