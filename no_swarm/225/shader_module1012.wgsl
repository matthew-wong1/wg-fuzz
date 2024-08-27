struct Struct_1 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(773f, false), Struct_1(607f, false), Struct_1(-968f, true), Struct_1(-749f, false), Struct_1(-1716f, false), Struct_1(1000f, false), Struct_1(1081f, true), Struct_1(326f, true), Struct_1(-695f, true), Struct_1(-1363f, false), Struct_1(799f, false), Struct_1(248f, true), Struct_1(-416f, true), Struct_1(-896f, false), Struct_1(1000f, false), Struct_1(-118f, true), Struct_1(107f, false), Struct_1(-1000f, false), Struct_1(728f, false), Struct_1(-1414f, true), Struct_1(-528f, false), Struct_1(1519f, false), Struct_1(-591f, true), Struct_1(-2150f, true), Struct_1(1023f, false), Struct_1(-484f, false), Struct_1(1179f, false));

var<private> global1: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(-127f, false), Struct_1(-1377f, true));

var<private> global2: array<vec3<i32>, 17>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
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

fn func_3(arg_0: vec3<i32>) -> u32 {
    global0 = array<Struct_1, 27>();
    let var_0 = ~arg_0;
    let var_1 = global1[_wgslsmith_index_u32(u_input.e, 2u)];
    var var_2 = _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.e ^ u_input.c, min(~0u, 11529u)), select(select(abs(vec2<u32>(4294967295u, 57730u)), vec2<u32>(u_input.a, u_input.a), !var_1.b) >> (min(~vec2<u32>(20075u, u_input.c), ~vec2<u32>(u_input.e, u_input.a)) % vec2<u32>(32u)), vec2<u32>(~u_input.e, u_input.a) ^ _wgslsmith_add_vec2_u32(firstLeadingBit(vec2<u32>(u_input.c, 34757u)), select(vec2<u32>(u_input.a, u_input.c), vec2<u32>(u_input.e, u_input.a), vec2<bool>(true, true))), !(1u <= ~u_input.a)));
    let var_3 = -19940i;
    return _wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.c & ~firstLeadingBit(u_input.c), 227u), vec2<u32>(~firstTrailingBit(u_input.e), 4294967295u));
}

fn func_2() -> f32 {
    global2 = array<vec3<i32>, 17>();
    var var_0 = global0[_wgslsmith_index_u32(select(u_input.c, 54797u, func_3(vec3<i32>(_wgslsmith_mod_i32(u_input.d.x, u_input.d.x), i32(-1i) * -1i, ~u_input.b.x)) <= u_input.c), 27u)];
    var var_1 = vec2<u32>(~_wgslsmith_div_u32(16930u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(6138u, u_input.a, u_input.a), vec3<u32>(u_input.c, 9691u, u_input.c))), 43013u ^ u_input.a);
    var var_2 = !var_0.b;
    var var_3 = select(~_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.d.x, u_input.d.x) | -u_input.b.zx, vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 26418i, u_input.b.x, u_input.d.x), vec4<i32>(u_input.d.x, -1i, 2408i, 1i)), firstLeadingBit(-29051i))), ~(-u_input.b.yx) ^ u_input.d.yx, true);
    return _wgslsmith_f_op_f32(ceil(var_0.a));
}

fn func_1(arg_0: i32, arg_1: vec3<u32>, arg_2: vec2<i32>) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(func_2());
    let var_1 = vec3<i32>(-1i) * -u_input.d;
    var var_2 = ~(~arg_1.x << (arg_1.x % 32u));
    var_2 = _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(arg_1.zx, _wgslsmith_mod_vec2_u32(vec2<u32>(~u_input.e, arg_1.x), select(arg_1.yz << (arg_1.zx % vec2<u32>(32u)), firstTrailingBit(vec2<u32>(u_input.e, arg_1.x)), vec2<bool>(false, true)))), 1u);
    var_2 = 4294967295u >> (~(~_wgslsmith_dot_vec3_u32(abs(arg_1), arg_1)) % 32u);
    return -var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -627f), func_1(u_input.d.x, vec3<u32>(1u, ~u_input.c, 44254u), _wgslsmith_add_vec2_i32(vec2<i32>(-1i, firstTrailingBit(0i)), vec2<i32>(0i, u_input.d.x ^ u_input.b.x))));
}

