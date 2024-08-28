struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: u32,
    d: vec2<u32>,
    e: bool,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
    c: vec4<f32>,
    d: i32,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 19>;

var<private> global1: array<vec3<i32>, 21>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: bool, arg_3: Struct_3) -> f32 {
    return _wgslsmith_f_op_f32(f32(-1f) * -725f);
}

fn func_2(arg_0: u32) -> vec2<u32> {
    global1 = array<vec3<i32>, 21>();
    global1 = array<vec3<i32>, 21>();
    var var_0 = true;
    global1 = array<vec3<i32>, 21>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(vec2<i32>(abs(-1i), 25011i), Struct_3(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true)), Struct_2(Struct_1(-1000f, vec4<f32>(1927f, 1322f, -1895f, -220f), -2147483647i, 0u), 1u, 0u, vec2<u32>(1u, arg_0), true), _wgslsmith_f_op_vec4_f32(vec4<f32>(1533f, 412f, -1578f, -142f) - vec4<f32>(335f, -149f, -1000f, -1699f)), abs(1i), _wgslsmith_f_op_vec3_f32(vec3<f32>(1605f, -554f, 1726f) - vec3<f32>(1057f, -1697f, -386f))), true, global0[_wgslsmith_index_u32(u_input.a.x, 19u)])), 416f, select(true, -198f != _wgslsmith_f_op_f32(sign(-534f)), false))));
    return ~_wgslsmith_add_vec2_u32(~u_input.a, abs(~vec2<u32>(51251u, u_input.a.x))) ^ vec2<u32>(~(~(u_input.a.x >> (1u % 32u))), 1u);
}

fn func_1(arg_0: vec3<f32>) -> vec2<bool> {
    let var_0 = _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 0u), vec2<u32>(1u, u_input.a.x) << (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u))), 4544u), abs(u_input.a.x)), _wgslsmith_mult_vec2_u32(u_input.a, _wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.a.x, 23417u) ^ func_2(4294967295u), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, 1u), ~u_input.a))));
    return vec2<bool>(true, min(_wgslsmith_dot_vec4_i32(-vec4<i32>(23355i, 32552i, -22093i, -5003i), ~vec4<i32>(-29987i, 28269i, 2147483647i, 6876i)), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(global1[_wgslsmith_index_u32(var_0.x, 21u)], global1[_wgslsmith_index_u32(42745u, 21u)]), _wgslsmith_sub_i32(26120i, -70680i))) >= -27922i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 19>();
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -760f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -479f), _wgslsmith_f_op_f32(-1040f * 628f), _wgslsmith_f_op_f32(f32(-1f) * -841f), -2167f), vec4<f32>(_wgslsmith_div_f32(208f, -1313f), _wgslsmith_f_op_f32(ceil(296f)), 1752f, -805f), vec4<bool>(true, true, false, true))), _wgslsmith_mod_i32(-22438i >> (u_input.a.x % 32u), -1i), 1u), u_input.a.x, _wgslsmith_sub_u32(~_wgslsmith_sub_u32(100848u, 63008u), ~(countOneBits(14864u) ^ (u_input.a.x << (1u % 32u)))), vec2<u32>(86397u, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(8598u, 1u, 48226u), select(vec3<u32>(u_input.a.x, 72118u, 1u), vec3<u32>(u_input.a.x, 0u, u_input.a.x), vec3<bool>(true, false, false))), vec3<u32>(87524u, 4294967295u, max(u_input.a.x, u_input.a.x)))), any(select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)), select(vec2<bool>(true, true), func_1(vec3<f32>(-1461f, 588f, -805f)), vec2<bool>(false, true)), select(vec2<bool>(false, false), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false))))));
    let var_1 = countOneBits(~(~_wgslsmith_clamp_u32(u_input.a.x, 86612u, var_0.c >> (var_0.c % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.a.a), -468f)), var_0.a.b.x, _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-var_0.a.b.x)))), vec2<u32>(u_input.a.x, firstLeadingBit(4294967295u >> (0u % 32u))));
}

