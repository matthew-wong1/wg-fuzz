struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec4<f32>,
    d: vec4<u32>,
    e: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(vec2<i32>(1i, -38199i)), Struct_1(vec2<i32>(-1i, i32(-2147483648))), Struct_1(vec2<i32>(18622i, 0i)), Struct_1(vec2<i32>(-1i, 12964i)), Struct_1(vec2<i32>(2147483647i, -10271i)), Struct_1(vec2<i32>(53645i, 1i)));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32, arg_1: vec2<i32>, arg_2: vec2<f32>, arg_3: Struct_4) -> i32 {
    let var_0 = vec3<u32>(_wgslsmith_dot_vec4_u32(~u_input.a, firstLeadingBit(vec4<u32>(0u, u_input.a.x, u_input.a.x, 0u) << (_wgslsmith_clamp_vec4_u32(u_input.a, u_input.a, u_input.a) % vec4<u32>(32u)))), u_input.a.x, ~(~(select(u_input.a.x, u_input.a.x, true) << (u_input.a.x % 32u))));
    global0 = array<Struct_1, 6>();
    let var_1 = vec2<bool>(!(!any(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), false))), all(vec2<bool>(true, true)));
    let var_2 = Struct_1(_wgslsmith_mod_vec2_i32(abs(-max(arg_1, vec2<i32>(u_input.d, arg_1.x))), vec2<i32>(~arg_0, -2147483647i)));
    var var_3 = u_input.a.x;
    return firstTrailingBit(-1i);
}

fn func_2(arg_0: Struct_3) -> bool {
    global0 = array<Struct_1, 6>();
    let var_0 = firstLeadingBit(~(~func_3(-2147483647i, u_input.b.yz, arg_0.c.yx, Struct_4(arg_0.c.yyy)))) != u_input.c;
    global0 = array<Struct_1, 6>();
    var var_1 = Struct_1(vec2<i32>(_wgslsmith_add_i32(u_input.d, ~43153i), 19707i));
    let var_2 = firstLeadingBit(_wgslsmith_add_u32(0u, _wgslsmith_sub_u32(_wgslsmith_div_u32(4294967295u, u_input.a.x << (4294967295u % 32u)), arg_0.d.x ^ u_input.a.x)));
    return true;
}

fn func_1(arg_0: vec2<bool>, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: i32) -> f32 {
    global0 = array<Struct_1, 6>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.b, 943f));
    let var_1 = arg_2.b;
    global0 = array<Struct_1, 6>();
    let var_2 = any(!select(vec2<bool>(arg_0.x, all(vec4<bool>(arg_0.x, false, false, true))), vec2<bool>(func_2(Struct_3(Struct_1(arg_2.a.a), vec4<i32>(-2147483647i, -58063i, u_input.d, 35808i), vec4<f32>(1000f, var_1, arg_2.b, arg_2.b), vec4<u32>(1u, u_input.a.x, 0u, 7473u), arg_2)), arg_0.x), vec2<bool>(true, true)));
    return -2467f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(4294967295u, 34347u);
    let var_1 = abs(var_0);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -138f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(942f + -826f), _wgslsmith_f_op_f32(891f - -619f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1079f, 981f)), _wgslsmith_f_op_f32(f32(-1f) * -113f)), vec4<f32>(1f, -755f, _wgslsmith_f_op_f32(min(403f, _wgslsmith_f_op_f32(round(165f)))), _wgslsmith_f_op_f32(f32(-1f) * -342f)), true)));
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.xz))) + var_2.zx) + vec2<f32>(_wgslsmith_f_op_f32(var_2.x + _wgslsmith_div_f32(603f, _wgslsmith_f_op_f32(func_1(vec2<bool>(false, false), vec3<i32>(2147483647i, u_input.d, u_input.c), Struct_2(Struct_1(vec2<i32>(u_input.c, 33940i)), 825f), 2659i)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1211f, 1034f)) - _wgslsmith_f_op_f32(569f + -395f)) * _wgslsmith_f_op_f32(func_1(vec2<bool>(true, true), vec3<i32>(u_input.c, 23265i, -37447i), Struct_2(global0[_wgslsmith_index_u32(1u, 6u)], -827f), u_input.c)))));
    var var_4 = 673u;
    let var_5 = vec3<i32>(~_wgslsmith_sub_i32(reverseBits(u_input.d), firstLeadingBit(u_input.b.x)), 46717i, u_input.d) & u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.xz, var_2.wz, vec2<i32>(4732i, _wgslsmith_clamp_i32(-7962i, _wgslsmith_add_i32(-1174i, abs(-19271i)), var_5.x)));
}

