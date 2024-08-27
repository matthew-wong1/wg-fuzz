struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec3<f32>,
    d: vec4<f32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 30>;

var<private> global1: array<vec4<u32>, 5> = array<vec4<u32>, 5>(vec4<u32>(31819u, 1519u, 1u, 0u), vec4<u32>(55848u, 0u, 1u, 0u), vec4<u32>(34352u, 0u, 1u, 1u), vec4<u32>(31926u, 26289u, 8194u, 4294967295u), vec4<u32>(4294967295u, 78155u, 1u, 0u));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1) -> Struct_1 {
    return arg_1;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    return arg_0;
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> vec3<u32> {
    let var_0 = arg_0;
    let var_1 = arg_0;
    let var_2 = max(~(-18994i >> (1u % 32u)) >> ((_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(47775u, 1u, 11909u)) >> (~(~7241u) % 32u)) % 32u), func_1(vec2<bool>(select(var_1.a, false, !arg_0.a), all(select(vec3<bool>(var_0.a, true, true), vec3<bool>(arg_2.a, var_0.a, false), vec3<bool>(false, false, true)))), func_1(select(vec2<bool>(var_1.a, var_0.a), vec2<bool>(arg_2.a, var_0.a), true), Struct_1(all(vec4<bool>(false, var_0.a, true, var_0.a)), reverseBits(-13353i), arg_2.c))).b);
    global0 = array<vec2<u32>, 30>();
    global0 = array<vec2<u32>, 30>();
    return ~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 1u, 1u), _wgslsmith_clamp_vec3_u32(~vec3<u32>(4294967295u, 1u, 22296u), vec3<u32>(1u, 1u, 1u), firstLeadingBit(vec3<u32>(48891u, 0u, 12804u))), vec3<u32>(_wgslsmith_sub_u32(1u, 0u), 1u, 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!(!all(vec4<bool>(true, false, false, false))));
    let var_1 = 1u;
    var_0 = false;
    let var_2 = vec3<u32>(reverseBits(_wgslsmith_mult_u32(var_1, var_1 & 4294967295u)), abs(select(select(var_1, var_1, true), var_1, u_input.a.x <= u_input.a.x)), firstTrailingBit(_wgslsmith_mod_u32(var_1, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_1, var_1, var_1), vec4<u32>(var_1, 1u, var_1, var_1))))) << (func_3(func_2(func_1(vec2<bool>(true, false), Struct_1(false, u_input.a.x, vec4<f32>(1202f, 241f, 1000f, -497f)))), -1000f, Struct_1(true, _wgslsmith_add_i32(~u_input.a.x, u_input.a.x), vec4<f32>(1f, 1f, 1f, 1f))) % vec3<u32>(32u));
    var var_3 = Struct_1(0i <= (u_input.a.x >> (firstLeadingBit(_wgslsmith_add_u32(var_1, 4294967295u)) % 32u)), select(u_input.a.x, _wgslsmith_dot_vec2_i32(~vec2<i32>(-7037i, -2147483647i), vec2<i32>(-u_input.a.x, -1i)), true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(641f + -600f), -1605f, _wgslsmith_f_op_f32(-773f * _wgslsmith_f_op_f32(select(862f, 835f, true))), _wgslsmith_f_op_f32(-343f + _wgslsmith_f_op_f32(max(1650f, 1348f))))));
    let var_4 = var_3.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_3.c.x + var_3.c.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_3.c) + vec4<f32>(var_3.c.x, 250f, -764f, var_3.c.x)), vec4<f32>(_wgslsmith_f_op_f32(abs(var_3.c.x)), _wgslsmith_f_op_f32(-var_3.c.x), var_3.c.x, var_3.c.x))), var_3.c.xwx, vec4<f32>(752f, var_3.c.x, -885f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1086f, func_1(vec2<bool>(true, var_3.a), Struct_1(true, u_input.a.x, var_3.c)).c.x))), vec4<i32>(_wgslsmith_dot_vec3_i32(min(vec3<i32>(-24104i, -32805i, u_input.a.x), ~vec3<i32>(0i, var_3.b, var_3.b)), firstLeadingBit(~vec3<i32>(var_3.b, var_3.b, u_input.a.x))), _wgslsmith_clamp_i32(~0i, -2317i, var_3.b), _wgslsmith_div_i32(-firstLeadingBit(23837i), func_1(vec2<bool>(false, false), func_2(Struct_1(var_3.a, var_3.b, var_3.c))).b), _wgslsmith_dot_vec3_i32(select(min(vec3<i32>(12228i, 4140i, u_input.a.x), vec3<i32>(18607i, 1i, -1i)), vec3<i32>(var_3.b, var_3.b, u_input.a.x) ^ vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), !vec3<bool>(false, var_3.a, var_3.a)), vec3<i32>(var_3.b, 1i, -23225i) | (vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i) << (vec3<u32>(var_1, 23641u, var_2.x) % vec3<u32>(32u))))));
}

