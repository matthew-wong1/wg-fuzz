struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 16>;

var<private> global1: Struct_1;

var<private> global2: array<vec2<bool>, 17> = array<vec2<bool>, 17>(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: Struct_3, arg_3: Struct_1) -> vec2<i32> {
    return -vec2<i32>(u_input.c.x, _wgslsmith_div_i32(u_input.c.x, u_input.d));
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: u32, arg_3: Struct_2) -> vec3<i32> {
    let var_0 = arg_3.b;
    global0 = array<Struct_2, 16>();
    var var_1 = Struct_2(vec4<i32>(u_input.c.x ^ _wgslsmith_mult_i32(arg_3.a.x, arg_3.d), -select(u_input.a.x, u_input.b, true) ^ arg_3.a.x, -3999i, firstLeadingBit(arg_1.b) >> (arg_2 % 32u)), arg_3.c, Struct_1(false), u_input.d);
    global0 = array<Struct_2, 16>();
    let var_2 = vec3<u32>(firstLeadingBit(_wgslsmith_mod_u32(1u, ~44955u)), arg_2, 61045u);
    return vec3<i32>(var_1.a.x, min(arg_3.d, 2147483647i ^ arg_3.a.x), ~arg_3.a.x);
}

fn func_3(arg_0: i32, arg_1: vec4<f32>, arg_2: vec3<i32>, arg_3: i32) -> i32 {
    global0 = array<Struct_2, 16>();
    let var_0 = abs(arg_2.x ^ arg_3);
    global1 = Struct_1(firstTrailingBit(select(1u, 4294967295u, false) << (~17822u % 32u)) < 16946u);
    let var_1 = 0u;
    let var_2 = select(!select(!vec3<bool>(global1.a, global1.a, false), vec3<bool>(global1.a, all(vec4<bool>(global1.a, global1.a, global1.a, global1.a)), select(global1.a, true, false)), vec3<bool>(false, all(vec4<bool>(true, false, true, false)), global1.a | false)), !(!(!vec3<bool>(global1.a, global1.a, true))), global1.a & (global1.a || any(select(global2[_wgslsmith_index_u32(1u, 17u)], vec2<bool>(true, false), false))));
    return _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(firstTrailingBit(arg_0), 68140i, _wgslsmith_div_i32(arg_2.x, -1i)), -vec3<i32>(-10701i, var_0, -2147483647i), vec3<i32>(-1i << (var_1 % 32u), _wgslsmith_mod_i32(u_input.b, arg_0), 2147483647i)), vec3<i32>(arg_0, u_input.b | max(var_0, 2109i), countOneBits(43746i))), max(-1i, -19320i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(~1u, _wgslsmith_mult_u32(1u, ~0u), 60362u), countOneBits(vec3<u32>(~1224u, 0u, ~17594u))), 16u)];
    global2 = array<vec2<bool>, 17>();
    global2 = array<vec2<bool>, 17>();
    var var_1 = Struct_2(vec4<i32>(_wgslsmith_dot_vec2_i32(min(u_input.a.xy | u_input.a.zx, u_input.c.xw), select(func_1(Struct_3(false, -1i, var_0.c), vec4<bool>(true, false, var_0.c.a, var_0.b.a), Struct_3(var_0.c.a, 34058i, var_0.c), Struct_1(global1.a)), countOneBits(vec2<i32>(76467i, 26036i)), var_0.b.a)), -1i, -1i, _wgslsmith_mod_i32(~abs(var_0.a.x), func_3(i32(-1i) * -1i, _wgslsmith_f_op_vec4_f32(vec4<f32>(1536f, 740f, -142f, -199f) - vec4<f32>(-799f, -951f, -1162f, -812f)), func_2(vec3<f32>(-309f, -2160f, 1001f), Struct_3(true, var_0.d, var_0.c), 17829u, Struct_2(var_0.a, Struct_1(var_0.c.a), var_0.c, 65862i)), 0i))), Struct_1(false == var_0.c.a), var_0.b, 17056i);
    global0 = array<Struct_2, 16>();
    global1 = Struct_1(all(vec3<bool>(!all(vec4<bool>(var_1.c.a, var_0.b.a, global1.a, false)), !(!global1.a), false)));
    let var_2 = Struct_3(false, _wgslsmith_mod_i32(-(i32(-1i) * -var_1.d), 0i), Struct_1(false));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1168f, _wgslsmith_div_f32(427f, 778f), all(vec4<bool>(global1.a, var_2.c.a, true, var_2.a))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1698f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-3020f, -1808f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-997f - -2193f)) * _wgslsmith_f_op_f32(-317f + 1543f))), vec3<i32>(var_0.a.x, 1i, abs(-1i)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1205f, _wgslsmith_f_op_f32(f32(-1f) * -1586f), -1478f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
}

