struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27>;

var<private> global1: array<vec2<bool>, 1>;

var<private> global2: array<Struct_1, 11>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: bool) -> u32 {
    var var_0 = Struct_2(u_input.b.x);
    global0 = array<Struct_1, 27>();
    var var_1 = true;
    global1 = array<vec2<bool>, 1>();
    var_0 = Struct_2(1i);
    return 11309u;
}

fn func_3(arg_0: f32, arg_1: bool) -> u32 {
    global0 = array<Struct_1, 27>();
    global0 = array<Struct_1, 27>();
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0), arg_0)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0 - 3025f), _wgslsmith_f_op_f32(abs(674f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-227f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-948f + arg_0))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0)))));
    let var_1 = u_input.d.yyy;
    global1 = array<vec2<bool>, 1>();
    return _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(~firstTrailingBit(vec2<u32>(23053u, var_1.x)), vec2<u32>(var_1.x, 1u)) & vec2<u32>(_wgslsmith_div_u32(reverseBits(u_input.d.x), _wgslsmith_add_u32(16557u, 21713u)), 108737u), vec2<u32>(u_input.a.x, ~abs(3199u)) ^ vec2<u32>(~(~var_1.x), min(var_1.x ^ var_1.x, 0u)));
}

fn func_1(arg_0: f32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-arg_0);
    let var_1 = Struct_1(_wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.d.x, u_input.a.x), u_input.d.x) >> (func_2(false) % 32u), abs(vec4<u32>(u_input.a.x, _wgslsmith_mult_u32(1u, 21715u), ~0u, firstTrailingBit(1769u)) | vec4<u32>(u_input.a.x, 4294967295u & u_input.d.x, func_3(arg_0, true), ~u_input.d.x)), u_input.b.yzx, vec4<bool>(!(!(u_input.a.x == 1u)), all(vec2<bool>(all(vec4<bool>(true, false, true, true)), any(vec2<bool>(true, false)))), (_wgslsmith_dot_vec2_u32(u_input.d.wy, u_input.a) > u_input.a.x) || true, !(-u_input.b.x == u_input.c)));
    global0 = array<Struct_1, 27>();
    var var_2 = _wgslsmith_div_vec4_u32(vec4<u32>(var_1.b.x, abs(abs(39764u)) << (_wgslsmith_add_u32(_wgslsmith_mult_u32(16194u, var_1.b.x), u_input.a.x) % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.b.x, 28406u), select(vec2<u32>(u_input.a.x, 28684u), var_1.b.xy, false)) | _wgslsmith_sub_u32(u_input.d.x << (u_input.a.x % 32u), u_input.a.x), firstLeadingBit(u_input.d.x)), vec4<u32>(func_3(arg_0, any(global1[_wgslsmith_index_u32(u_input.a.x, 1u)])), ~1u, (_wgslsmith_clamp_u32(44854u, 17736u, 65643u) >> ((u_input.a.x << (30898u % 32u)) % 32u)) ^ u_input.a.x, firstTrailingBit(_wgslsmith_mod_u32(var_1.a, var_1.a) & u_input.d.x)));
    global1 = array<vec2<bool>, 1>();
    return Struct_2(-_wgslsmith_div_i32(_wgslsmith_add_i32(_wgslsmith_mod_i32(var_1.c.x, var_1.c.x), u_input.b.x), ~1i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(218f);
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.b, _wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(1u & u_input.a.x, 56321u | u_input.d.x, 1u), ~u_input.d.ywy), u_input.d.wwy), _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(u_input.b.x, u_input.c, -34721i), -(~u_input.b.x), 1i, _wgslsmith_add_i32(-62250i, _wgslsmith_dot_vec2_i32(u_input.b.zw, u_input.b.zw))), vec4<i32>(-2147483647i, countOneBits(var_0.a), u_input.c, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a, var_0.a, 23194i, u_input.c), u_input.b))));
}

