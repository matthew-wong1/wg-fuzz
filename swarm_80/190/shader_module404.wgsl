struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: f32,
    d: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<u32>, arg_2: vec2<i32>, arg_3: f32) -> vec2<bool> {
    return select(vec2<bool>(true, !all(vec2<bool>(true, false))), vec2<bool>(false, !(!any(vec2<bool>(false, false)))), !(arg_1.x > 1u));
}

fn func_3() -> i32 {
    return _wgslsmith_sub_i32(abs(-2147483647i), 1i);
}

fn func_4(arg_0: i32, arg_1: vec2<i32>, arg_2: vec2<bool>, arg_3: vec4<u32>) -> vec3<bool> {
    global0 = true;
    global0 = !arg_2.x;
    var var_0 = Struct_4(Struct_2(firstLeadingBit(vec2<u32>(u_input.a, 1u))), Struct_2(firstLeadingBit(u_input.b.xz)));
    let var_1 = 830f;
    global0 = arg_2.x;
    return !(!vec3<bool>(true, any(vec3<bool>(false, arg_2.x, true)), arg_2.x));
}

fn func_1(arg_0: f32) -> vec3<bool> {
    let var_0 = -656f;
    global0 = all(!(!func_2(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 0u, 4294967295u, 17429u), vec4<u32>(7363u, u_input.a, 1u, 1u)), _wgslsmith_mod_vec2_u32(u_input.b.zy, vec2<u32>(1u, u_input.a)), -vec2<i32>(0i, 1484i), _wgslsmith_f_op_f32(-var_0))));
    let var_1 = Struct_2(_wgslsmith_clamp_vec2_u32(~(~u_input.b.zy << (u_input.b.zy % vec2<u32>(32u))), u_input.b.yz, firstLeadingBit(vec2<u32>(countOneBits(122433u), u_input.b.x))));
    var var_2 = var_0;
    var var_3 = Struct_2(countOneBits(~(~u_input.b.yx)));
    return func_4(_wgslsmith_mod_i32(_wgslsmith_sub_i32(func_3(), _wgslsmith_dot_vec3_i32(~vec3<i32>(8202i, -23393i, 0i), vec3<i32>(-2147483647i, 1i, 78857i))), -30093i), _wgslsmith_mod_vec2_i32(vec2<i32>(0i, -2147483647i), -select(vec2<i32>(35735i, -25818i), vec2<i32>(2147483647i, 0i) >> (vec2<u32>(var_3.a.x, 65998u) % vec2<u32>(32u)), true)), vec2<bool>(true, false), vec4<u32>((~u_input.b.x << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 57663u, u_input.a), vec3<u32>(u_input.a, u_input.b.x, 4294967295u)) % 32u)) >> ((1u | _wgslsmith_dot_vec2_u32(u_input.b.zy, var_1.a)) % 32u), abs(min(_wgslsmith_dot_vec4_u32(vec4<u32>(43402u, var_1.a.x, var_1.a.x, var_1.a.x), vec4<u32>(37034u, var_3.a.x, 4294967295u, 4294967295u)), ~var_1.a.x)), 4294967295u, abs(var_1.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = true;
    var var_0 = !select(vec3<bool>(true, true, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 0u, u_input.a, u_input.a), vec4<u32>(u_input.b.x, 7845u, 10784u, 6549u)) < 0u), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), false), true);
    global0 = !(!all(vec2<bool>(false, var_0.x)) || true);
    var_0 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-431f, -1388f)), 548f))))));
    global0 = true;
    let var_1 = Struct_2(abs(vec2<u32>(0u, u_input.b.x)));
    global0 = all(!var_0.yy);
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, _wgslsmith_sub_i32(min(~(-28652i), -53773i), firstTrailingBit(-5173i)));
}

